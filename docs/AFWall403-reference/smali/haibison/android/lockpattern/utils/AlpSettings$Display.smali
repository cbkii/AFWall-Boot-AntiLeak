.class public Lhaibison/android/lockpattern/utils/AlpSettings$Display;
.super Ljava/lang/Object;
.source "AlpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/utils/AlpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation


# static fields
.field public static final METADATA_CAPTCHA_WIRED_DOTS:Ljava/lang/String; = "captchaWiredDots"

.field public static final METADATA_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field public static final METADATA_MIN_WIRED_DOTS:Ljava/lang/String; = "minWiredDots"

.field public static final METADATA_STEALTH_MODE:Ljava/lang/String; = "stealthMode"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCaptchaWiredDots(Landroid/content/Context;)I
    .locals 3

    .line 239
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_captcha_wired_dots:I

    .line 240
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_captcha_wired_dots_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 239
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMaxRetries(Landroid/content/Context;)I
    .locals 3

    .line 201
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_max_retries:I

    .line 202
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_max_retries_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 201
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMinWiredDots(Landroid/content/Context;)I
    .locals 3

    .line 163
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_min_wired_dots:I

    .line 164
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_min_wired_dots_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 163
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isStealthMode(Landroid/content/Context;)Z
    .locals 3

    .line 138
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_stealth_mode:I

    .line 139
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lhaibison/android/lockpattern/R$bool;->alp_42447968_pkey_display_stealth_mode_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 138
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setCaptchaWiredDots(Landroid/content/Context;I)V
    .locals 2

    .line 266
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateCaptchaWiredDots(Landroid/content/Context;I)I

    move-result p1

    .line 267
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_captcha_wired_dots:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMaxRetries(Landroid/content/Context;I)V
    .locals 2

    .line 228
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateMaxRetries(Landroid/content/Context;I)I

    move-result p1

    .line 229
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_max_retries:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setMinWiredDots(Landroid/content/Context;I)V
    .locals 2

    .line 190
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->validateMinWiredDots(Landroid/content/Context;I)I

    move-result p1

    .line 191
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_min_wired_dots:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setStealthMode(Landroid/content/Context;Z)V
    .locals 2

    .line 153
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_display_stealth_mode:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static validateCaptchaWiredDots(Landroid/content/Context;I)I
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_captcha_wired_dots_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_1
    return p1
.end method

.method public static validateMaxRetries(Landroid/content/Context;I)I
    .locals 0

    if-gtz p1, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_max_retries_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static validateMinWiredDots(Landroid/content/Context;I)I
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lhaibison/android/lockpattern/R$integer;->alp_42447968_pkey_display_min_wired_dots_default:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    :cond_1
    return p1
.end method
