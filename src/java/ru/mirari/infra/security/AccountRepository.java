package ru.mirari.infra.security;

/**
 * @author alari
 * @since 12/1/11 2:07 PM
 */
public interface AccountRepository {
    public Account getByEmail(String email);
}
