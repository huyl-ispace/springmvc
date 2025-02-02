package vn.huyl.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.context.event.EventListener;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionConnectedEvent;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;
import vn.huyl.model.ChatMessage;

import java.util.Objects;

@Component
@Slf4j
public class WebSocketEventListener {

    private final SimpMessageSendingOperations messageSendingOperations;

    public WebSocketEventListener(SimpMessageSendingOperations messageSendingOperations){
        this.messageSendingOperations = messageSendingOperations;
    }

    @EventListener
    public void handleWebSocketConnectListener(SessionConnectedEvent event) {
        log.info("Đã kết nối vào WebSocket.");
    }

    @EventListener
    public void handleWebSocketDisconnectListener(SessionDisconnectEvent event) {
        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
        String username = (String) Objects.requireNonNull(headerAccessor.getSessionAttributes()).get("username");
        if (null != username && !username.isEmpty()){
            log.info("Người dùng ngắt kết nối: " + username);
            ChatMessage chatMessage = new ChatMessage();
            chatMessage.setType(ChatMessage.MessageType.LEAVE);
            chatMessage.setSender(username);
            messageSendingOperations.convertAndSend("/topic/public", chatMessage);
        }
    }
}
