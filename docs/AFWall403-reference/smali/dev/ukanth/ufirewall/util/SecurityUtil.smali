.class public Ldev/ukanth/ufirewall/util/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field public static final LOCK_VERIFICATION:I = 0x4bc

.field public static final REQ_ENTER_PATTERN:I = 0x261b


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$N0lASuLS_lELo8F8KflkaYQD9p8(Ldev/ukanth/ufirewall/util/SecurityUtil;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/SecurityUtil;->lambda$requestPassword$2(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SwF6EGhPT_DvhKFTAeBnk9Szx3Y(Ldev/ukanth/ufirewall/util/SecurityUtil;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/SecurityUtil;->lambda$requestPassword$3(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSXrWrrTR_5gbNBJxPGEWh7mn6s(Ldev/ukanth/ufirewall/util/SecurityUtil;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->lambda$requestFingerprint$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lK0pxIldummxg1llZJW8RCBvgu8(Ldev/ukanth/ufirewall/util/SecurityUtil;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->lambda$requestFingerprintQ$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$lm0R98maDO4Jmx4BZZbyPdagSyQ(Ldev/ukanth/ufirewall/util/SecurityUtil;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->lambda$gracefulShutdown$5()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    return-void
.end method

.method private deviceCheck()V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    .line 59
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 47
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    const/16 v2, 0x4bc

    .line 51
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    .line 56
    sget v2, Ldev/ukanth/ufirewall/R$string;->android_version:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method private gracefulShutdown()V
    .locals 3

    .line 181
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/util/SecurityUtil;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityUtil"

    const-string v2, "Error during graceful shutdown"

    .line 197
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    .line 199
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method static synthetic lambda$gracefulShutdown$4()V
    .locals 1

    .line 192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private synthetic lambda$gracefulShutdown$5()V
    .locals 5

    const-wide/16 v0, 0x1f4

    :try_start_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    const/4 v3, 0x1

    .line 184
    invoke-virtual {v2, v3}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    .line 185
    invoke-virtual {v2}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    .line 188
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;-><init>()V

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :goto_1
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    throw v2
.end method

.method private synthetic lambda$requestFingerprint$0()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->gracefulShutdown()V

    return-void
.end method

.method private synthetic lambda$requestFingerprintQ$1()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->gracefulShutdown()V

    return-void
.end method

.method private synthetic lambda$requestPassword$2(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 143
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->gracefulShutdown()V

    return-void
.end method

.method private synthetic lambda$requestPassword$3(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/CharSequence;)V
    .locals 1

    .line 146
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x100

    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/util/InputValidator;->sanitizeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    .line 148
    sget v0, Ldev/ukanth/ufirewall/R$string;->wrong_password:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    .line 153
    invoke-static {v0, p2}, Ldev/ukanth/ufirewall/util/SecurePasswordManager;->verifyPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    .line 158
    sget v0, Ldev/ukanth/ufirewall/R$string;->wrong_password:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private requestFingerprint()V
    .locals 2

    .line 117
    new-instance v0, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v1, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/util/SecurityUtil;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setOnFingerprintFailureListener(Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;)V

    .line 121
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->show()V

    return-void
.end method

.method private requestFingerprintQ()V
    .locals 2

    .line 126
    new-instance v0, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v1, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/util/SecurityUtil;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->setOnFingerprintFailureListener(Ldev/ukanth/ufirewall/util/BiometricUtil$OnFingerprintFailure;)V

    .line 130
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/BiometricUtil$FingerprintDialog;->show()V

    return-void
.end method

.method private requestPassword()V
    .locals 5

    .line 134
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "p1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "p2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->context:Landroid/content/Context;

    const-class v3, Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    const-string v2, "LockPassword"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    const/16 v2, 0x261b

    .line 168
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/SecurityUtil;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->pass_titleget:I

    .line 138
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/16 v1, 0x81

    .line 139
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->submit:I

    .line 140
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 141
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/util/SecurityUtil;)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->enterpass:I

    sget v2, Ldev/ukanth/ufirewall/R$string;->password_empty:I

    new-instance v3, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/util/SecurityUtil;)V

    .line 145
    invoke-virtual {v0, v1, v2, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(IILcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    :goto_0
    return-void
.end method


# virtual methods
.method public isPasswordProtected()Z
    .locals 3

    .line 110
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "p1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "LockPassword"

    const-string v2, ""

    .line 111
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/FingerprintUtil;->isAndroidSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public passCheck()Z
    .locals 5

    .line 65
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->deviceCheck()V

    return v1

    .line 69
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "p3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :pswitch_1
    const-string v2, "p2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :pswitch_2
    const-string v2, "p1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_3
    const-string v2, "p0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_1

    goto :goto_1

    .line 97
    :pswitch_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/FingerprintUtil;->isAndroidSupport()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->requestFingerprint()V

    return v1

    :cond_5
    :goto_1
    return v3

    .line 82
    :pswitch_5
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    const-string v2, "LockPassword"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    return v1

    .line 86
    :cond_6
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->requestPassword()V

    return v1

    .line 73
    :pswitch_6
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 78
    :cond_7
    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->requestPassword()V

    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0xdc0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
