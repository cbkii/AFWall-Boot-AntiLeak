.class public Lhaibison/android/lockpattern/utils/AlpSettings;
.super Ljava/lang/Object;
.source "AlpSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhaibison/android/lockpattern/utils/AlpSettings$Security;,
        Lhaibison/android/lockpattern/utils/AlpSettings$Display;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final genDatabaseFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "android-lockpattern"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a6eedbe5-1cf9-4684-8134-ad4ec9f6a131"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%s_%s_%s"

    .line 62
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final genPreferenceFilename()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "android-lockpattern"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "a6eedbe5-1cf9-4684-8134-ad4ec9f6a131"

    aput-object v2, v0, v1

    const-string v1, "%s_%s"

    .line 52
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lhaibison/android/lockpattern/utils/AlpSettings;->genPreferenceFilename()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static setupPreferenceManager(Landroid/content/Context;Landroid/preference/PreferenceManager;)V
    .locals 0

    const/4 p0, 0x0

    .line 89
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->setSharedPreferencesMode(I)V

    .line 90
    invoke-static {}, Lhaibison/android/lockpattern/utils/AlpSettings;->genPreferenceFilename()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    return-void
.end method
