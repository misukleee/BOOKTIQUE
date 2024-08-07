package com.op.booktique.service;

public interface EmailService {
    void sendSimpleMessage(String to, String subject, String text);
}