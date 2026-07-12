.class public Ldev/ukanth/ufirewall/util/SecurePasswordManager;
.super Ljava/lang/Object;
.source "SecurePasswordManager.java"


# static fields
.field private static final MASTER_KEY:Ljava/lang/String; = "AFW@LL_P@SSWORD_PR0T3CTI0N"

.field private static final TAG:Ljava/lang/String; = "SecurePasswordManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPassword()V
    .locals 2

    const-string v0, ""

    .line 153
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->profile_pwd(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enc"

    .line 155
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "secure_enc"

    .line 156
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "SecurePasswordManager"

    const-string v1, "Password data cleared"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getEncryptionStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Encrypted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isEnc()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nSecure encryption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v2, "secure_enc"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nLegacy encryption: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->isLegacyEncryption()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isEnc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Uses AES prefix: "

    .line 130
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v4, "AES:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\nCrypto validation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/SecureCrypto;->validateCrypto(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isLegacyEncryption()Z
    .locals 3

    .line 116
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isEnc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v2, "secure_enc"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static migrateToSecureEncryption(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 105
    :try_start_0
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->storePasswordSecure(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "SecurePasswordManager"

    const-string v0, "Failed to migrate password to secure encryption"

    .line 107
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static reencryptPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 141
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "SecurePasswordManager"

    const-string p1, "Cannot re-encrypt: current password verification failed"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 146
    :cond_0
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->storePasswordSecure(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static storePasswordSecure(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "SecurePasswordManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v2, "AFW@LL_P@SSWORD_PR0T3CTI0N"

    .line 27
    invoke-static {p0, v2, p1}, Ldev/ukanth/ufirewall/util/SecureCrypto;->encryptSecure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 30
    invoke-static {p0}, Ldev/ukanth/ufirewall/util/G;->profile_pwd(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    sget-object p0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "enc"

    const/4 v2, 0x1

    .line 32
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "secure_enc"

    .line 33
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 34
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p0, "Password stored with secure encryption"

    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    const-string p1, "Failed to store password securely"

    .line 39
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public static verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "SecurePasswordManager"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isEnc()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    .line 64
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    const-string v5, "secure_enc"

    invoke-interface {v3, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "AFW@LL_P@SSWORD_PR0T3CTI0N"

    if-eqz v3, :cond_2

    .line 65
    :try_start_1
    invoke-static {p0, v5, v2}, Ldev/ukanth/ufirewall/util/SecureCrypto;->decryptSecure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 69
    :cond_2
    invoke-static {p0, v5, v2}, Ldev/ukanth/ufirewall/util/SecureCrypto;->decryptSecure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    .line 75
    :cond_3
    invoke-static {v5, v2}, Ldev/ukanth/ufirewall/Api;->unhideCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 76
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->migrateToSecureEncryption(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "Successfully migrated password from DES to AES"

    .line 79
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v4

    .line 86
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->migrateToSecureEncryption(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Successfully migrated plaintext password to AES"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return v4

    :catch_0
    move-exception p0

    const-string p1, "Error during password verification"

    .line 94
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    return v1
.end method
