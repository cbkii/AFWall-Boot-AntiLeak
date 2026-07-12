.class public Lhaibison/android/lockpattern/utils/AlpSettings$Security;
.super Ljava/lang/Object;
.source "AlpSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhaibison/android/lockpattern/utils/AlpSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Security"
.end annotation


# static fields
.field public static final METADATA_AUTO_SAVE_PATTERN:Ljava/lang/String; = "autoSavePattern"

.field public static final METADATA_ENCRYPTER_CLASS:Ljava/lang/String; = "encrypterClass"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncrypterClass(Landroid/content/Context;)[C
    .locals 2

    .line 355
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_encrypter_class:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getPattern(Landroid/content/Context;)[C
    .locals 2

    .line 331
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static isAutoSavePattern(Landroid/content/Context;)Z
    .locals 3

    .line 304
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_auto_save_pattern:I

    .line 305
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lhaibison/android/lockpattern/R$bool;->alp_42447968_pkey_sys_auto_save_pattern_default:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 304
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setAutoSavePattern(Landroid/content/Context;Z)V
    .locals 2

    .line 319
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_auto_save_pattern:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 320
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->setPattern(Landroid/content/Context;[C)V

    :cond_0
    return-void
.end method

.method public static setEncrypterClass(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lhaibison/android/lockpattern/utils/Encrypter;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lhaibison/android/lockpattern/utils/AlpSettings$Security;->setEncrypterClass(Landroid/content/Context;[C)V

    return-void
.end method

.method public static setEncrypterClass(Landroid/content/Context;[C)V
    .locals 2

    .line 380
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_encrypter_class:I

    .line 381
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 382
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setPattern(Landroid/content/Context;[C)V
    .locals 2

    .line 342
    invoke-static {p0}, Lhaibison/android/lockpattern/utils/AlpSettings;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget v1, Lhaibison/android/lockpattern/R$string;->alp_42447968_pkey_sys_pattern:I

    .line 343
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 344
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
