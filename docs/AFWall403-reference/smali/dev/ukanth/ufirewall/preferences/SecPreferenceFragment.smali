.class public Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SecPreferenceFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final REQUEST_CODE_ENABLE_ADMIN:I = 0x27fd

.field private static final REQ_CREATE_PATTERN:I = 0x2695

.field private static final REQ_ENTER_PATTERN:I = 0x261b


# instance fields
.field private deviceAdmin:Landroid/content/ComponentName;

.field private enableAdminPref:Landroid/preference/SwitchPreference;

.field private enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method public static synthetic $r8$lambda$7HDuj7YCJRCH0o-KJNfMReZAyKU(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->lambda$confirmResetPasswords$2(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPassword(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->setPassword(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private canUserFingerPrint()Z
    .locals 5

    const/4 v0, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "keyguard"

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    const-string v3, "fingerprint"

    .line 323
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    .line 325
    invoke-static {v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.permission.USE_FINGERPRINT"

    .line 326
    invoke-static {v1, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 327
    invoke-static {v3}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private checkFingerprintDeviceSupport()V
    .locals 6

    .line 338
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "keyguard"

    .line 342
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    const-string v2, "fingerprint"

    .line 343
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v2

    const-string v3, "passSetting"

    .line 344
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 347
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 348
    sget v1, Ldev/ukanth/ufirewall/R$string;->device_with_no_fingerprint_sensor:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_1
    const-string v4, "android.permission.USE_FINGERPRINT"

    .line 352
    invoke-static {v0, v4}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_permission_manifest_missing:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 354
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 357
    :cond_2
    invoke-static {v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/hardware/fingerprint/FingerprintManager;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 358
    sget v1, Ldev/ukanth/ufirewall/R$string;->register_at_least_one_fingerprint:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 359
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 362
    :cond_3
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_4

    .line 363
    sget v1, Ldev/ukanth/ufirewall/R$string;->lock_screen_not_enabled:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :goto_0
    return-void

    .line 367
    :cond_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 368
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    const/4 v1, 0x3

    .line 370
    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 371
    sget v1, Ldev/ukanth/ufirewall/R$string;->fingerprint_enabled_successfully:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_5
    return-void
.end method

.method private confirmResetPasswords(Landroid/preference/ListPreference;)V
    .locals 7

    .line 386
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    const-string v1, "LockPassword"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->profile_pwd()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 389
    new-instance v3, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    sget v5, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 390
    invoke-virtual {v3, v5}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->enterpass:I

    .line 391
    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    const/16 v4, 0x81

    .line 392
    invoke-virtual {v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->inputType(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    sget v4, Ldev/ukanth/ufirewall/R$string;->enterpass:I

    sget v5, Ldev/ukanth/ufirewall/R$string;->password_empty:I

    new-instance v6, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;

    invoke-direct {v6, p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$2;-><init>(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/preference/ListPreference;)V

    .line 393
    invoke-virtual {v3, v4, v5, v6}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->input(IILcom/afollestad/materialdialogs/MaterialDialog$InputCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v3

    .line 422
    invoke-virtual {v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 426
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 427
    new-instance v0, Landroid/content/Intent;

    sget-object v3, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_COMPARE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 429
    sget-object v2, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    const/16 v1, 0x261b

    .line 430
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 434
    :cond_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 438
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    new-instance v1, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;

    invoke-direct {v1, v0}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;-><init>(Landroid/content/Context;)V

    .line 441
    new-instance v2, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Landroid/preference/ListPreference;Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V

    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setOnFingerprintFailureListener(Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintFailure;)V

    .line 445
    new-instance p1, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->setOnFingerprintSuccess(Ldev/ukanth/ufirewall/util/FingerprintUtil$OnFingerprintSuccess;)V

    .line 449
    invoke-virtual {v1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->show()V

    :cond_2
    return-void
.end method

.method private enablePatternFeatures()V
    .locals 3

    const-string v0, "patternMax"

    .line 528
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v1, "stealthMode"

    .line 529
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 530
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    if-eqz v0, :cond_1

    .line 531
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private handleCreatePatternResult(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "passSetting"

    .line 495
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 496
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    if-eqz p2, :cond_0

    .line 497
    sget-object p1, Lhaibison/android/lockpattern/LockPatternActivity;->EXTRA_PATTERN:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getCharArrayExtra(Ljava/lang/String;)[C

    move-result-object p1

    if-eqz p1, :cond_1

    .line 499
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->savePattern(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enablePatternFeatures()V

    goto :goto_0

    .line 503
    :cond_0
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->resetPatternSelection(Landroid/preference/ListPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleEnterPatternResult(I)V
    .locals 4

    const-string v0, "passSetting"

    .line 508
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 509
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 510
    sget-object p1, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "LockPassword"

    const-string v3, ""

    invoke-interface {p1, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 516
    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 517
    invoke-static {v2}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$confirmResetPasswords$1(Landroid/preference/ListPreference;Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;)V
    .locals 1

    const/4 v0, 0x3

    .line 442
    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 443
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/FingerprintUtil$FingerprintDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$confirmResetPasswords$2(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 446
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->isFingerprintEnabled(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 447
    sget v0, Ldev/ukanth/ufirewall/R$string;->fingerprint_disabled_successfully:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$showPasswordActivity$0(Landroid/preference/ListPreference;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    const/4 p2, 0x0

    .line 240
    invoke-virtual {p0, p2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 241
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private preSelectListForBackward()V
    .locals 8

    const-string v0, "passSetting"

    .line 141
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 148
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "p3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "p1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "p0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "Disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 165
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 159
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 153
    :pswitch_2
    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 150
    :pswitch_3
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1

    .line 162
    :pswitch_4
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x39294538 -> :sswitch_4
        0xdc0 -> :sswitch_3
        0xdc1 -> :sswitch_2
        0xdc2 -> :sswitch_1
        0xdc3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetPatternSelection(Landroid/preference/ListPreference;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method private savePattern(Ljava/lang/String;)V
    .locals 2

    .line 523
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->sPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LockPassword"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x0

    .line 524
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck(Z)Z

    return-void
.end method

.method private setPassword(Ljava/lang/String;)V
    .locals 2

    .line 178
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "AFW@LL_P@SSWORD_PR0T3CTI0N"

    .line 181
    invoke-static {v1, p1}, Ldev/ukanth/ufirewall/Api;->hideCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 183
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->profile_pwd(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    .line 184
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isEnc(Z)Z

    .line 185
    sget p1, Ldev/ukanth/ufirewall/R$string;->passdefined:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 192
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private setupDeviceSecurityCheck(Landroid/preference/Preference;)V
    .locals 2

    const-string v0, "securitySetting"

    .line 112
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 113
    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    .line 116
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    .line 129
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    .line 130
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v1, "keyguard"

    .line 119
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 121
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    const/4 v0, 0x1

    .line 122
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    .line 124
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    .line 125
    invoke-virtual {p1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private showPasswordActivity(Landroid/preference/ListPreference;)V
    .locals 5

    .line 202
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    sget v1, Ldev/ukanth/ufirewall/R$string;->pass_titleset:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 206
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 207
    sget v2, Ldev/ukanth/ufirewall/R$string;->enterpass:I

    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 208
    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 209
    sget v3, Ldev/ukanth/ufirewall/R$string;->reenterpass:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v3, 0x81

    .line 212
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 213
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 215
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    .line 216
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 217
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    .line 219
    invoke-virtual {v0, v3, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->customView(Landroid/view/View;Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 220
    invoke-virtual {v0, v4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->autoDismiss(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 221
    sget v3, Ldev/ukanth/ufirewall/R$string;->set_password:I

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 222
    sget v3, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 225
    new-instance v3, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;

    invoke-direct {v3, p0, v1, v2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$1;-><init>(Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 239
    new-instance v1, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment$$ExternalSyntheticLambda5;-><init>(Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 243
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private showPatternActivity()V
    .locals 5

    .line 247
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lhaibison/android/lockpattern/LockPatternActivity;->ACTION_CREATE_PATTERN:Ljava/lang/String;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lhaibison/android/lockpattern/LockPatternActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x2695

    .line 248
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 481
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "enableAdmin"

    .line 482
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->setupEnableAdmin(Landroid/preference/Preference;)V

    const/16 v0, 0x261b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2695

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 485
    :cond_1
    invoke-direct {p0, p2, p3}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->handleCreatePatternResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 489
    :cond_2
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->handleEnterPatternResult(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 79
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 81
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/admin/AdminDeviceReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Ldev/ukanth/ufirewall/R$xml;->security_preferences:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->addPreferencesFromResource(I)V

    .line 90
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->preSelectListForBackward()V

    const-string p1, "enableDeviceCheck"

    .line 92
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->setupDeviceSecurityCheck(Landroid/preference/Preference;)V

    const-string p1, "enableAdmin"

    .line 93
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->setupEnableAdmin(Landroid/preference/Preference;)V

    .line 98
    invoke-static {}, Ldev/ukanth/ufirewall/util/FingerprintUtil;->isAndroidSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->canUserFingerPrint()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, "passSetting"

    .line 99
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    .line 100
    sget v0, Ldev/ukanth/ufirewall/R$string;->pref_none:I

    .line 101
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->pref_password:I

    .line 102
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->pref_pattern:I

    .line 103
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const-string v0, "p1"

    const-string v1, "p2"

    const-string v2, "p0"

    .line 105
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 473
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableAdminPref:Landroid/preference/SwitchPreference;

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableDeviceCheckPref:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 466
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 467
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 468
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 458
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 459
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const-string p1, "passSetting"

    .line 255
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 256
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    const-string v0, "patternMax"

    .line 257
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v2, "stealthMode"

    .line 258
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    .line 259
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 260
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 261
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, -0x1

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v3, -0x1

    goto :goto_1

    :pswitch_0
    const-string v2, "p3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x3

    goto :goto_1

    :pswitch_1
    const-string v2, "p2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :pswitch_2
    const-string v2, "p1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_3
    const-string v2, "p0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 275
    :pswitch_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/FingerprintUtil;->isAndroidSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->checkFingerprintDeviceSupport()V

    goto :goto_2

    .line 272
    :pswitch_5
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->showPatternActivity()V

    goto :goto_2

    .line 268
    :pswitch_6
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->showPasswordActivity(Landroid/preference/ListPreference;)V

    goto :goto_2

    .line 264
    :pswitch_7
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->confirmResetPasswords(Landroid/preference/ListPreference;)V

    :cond_4
    :goto_2
    const-string p1, "enableAdmin"

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 287
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableAdmin()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device Admin Active ?"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 290
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 292
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.app.extra.DEVICE_ADMIN"

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 294
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    sget v0, Ldev/ukanth/ufirewall/R$string;->device_admin_desc:I

    .line 297
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.extra.ADD_EXPLANATION"

    .line 296
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x27fd

    .line 298
    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 301
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 302
    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 303
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->device_admin_disabled:I

    .line 304
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_6
    :goto_3
    const-string p1, "enableStealthPattern"

    .line 308
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 309
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 310
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableStealthPattern()Z

    move-result p2

    .line 309
    invoke-static {p1, p2}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->setStealthMode(Landroid/content/Context;Z)V

    :cond_7
    return-void

    nop

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

.method public setupEnableAdmin(Landroid/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->enableAdminPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;->deviceAdmin:Landroid/content/ComponentName;

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
