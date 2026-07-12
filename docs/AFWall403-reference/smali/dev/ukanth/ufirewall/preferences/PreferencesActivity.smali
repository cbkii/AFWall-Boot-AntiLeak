.class public Ldev/ukanth/ufirewall/preferences/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final ALWAYS_SIMPLE_PREFS:Z = false


# instance fields
.field private disposable:Lio/reactivex/rxjava3/disposables/Disposable;

.field private mToolBar:Landroidx/appcompat/widget/Toolbar;

.field private rxEvent:Ldev/ukanth/ufirewall/events/RxEvent;


# direct methods
.method public static synthetic $r8$lambda$ZcXKHkMRTFrNlVC_MXzmZ0CdCPo(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->lambda$subscribe$0(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private handleIntentExtras()V
    .locals 2

    .line 122
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "validate"

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    check-cast v0, Ljava/lang/String;

    const-string v1, "yes"

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    :cond_0
    return-void
.end method

.method private handleLogServiceChanges(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const-string v0, "logTarget"

    .line 352
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logTarget preference changed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferencesActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "enableLogService"

    .line 358
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 360
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 362
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->log_service_start:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 363
    new-instance p1, Landroid/content/Intent;

    const-class p2, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    invoke-virtual {p3, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 365
    invoke-virtual {p3, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->log_service_stop:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 368
    new-instance p1, Landroid/content/Intent;

    const-class p2, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {p3, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->log_service_select:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleNotificationChanges(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification_priority"

    .line 334
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "notification"

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 336
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 337
    invoke-static {p3}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0, p3}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    :cond_0
    const-string v0, "activeNotification"

    .line 340
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 341
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 343
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 344
    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {p3}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1, p3}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleProfileAndThemeChanges(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "enableMultiProfile"

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadProfile()V

    :cond_0
    const-string v0, "theme"

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 383
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->initTheme()V

    .line 384
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->recreate()V

    .line 385
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "dev.ukanth.ufirewall.theme.REFRESH"

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 391
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p3, "dev.ukanth.ufirewall.ui.CHECKREFRESH"

    .line 392
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private initTheme()V
    .locals 3

    .line 73
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 81
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->setTheme(I)V

    goto :goto_1

    .line 78
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->setTheme(I)V

    goto :goto_1

    .line 75
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->setTheme(I)V

    goto :goto_1

    .line 84
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->setTheme(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_2
        0x4c -> :sswitch_1
        0x12647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isSimplePreferences(Landroid/content/Context;)Z
    .locals 0

    .line 106
    invoke-static {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->isXLargeTablet(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isXLargeTablet(Landroid/content/Context;)Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$subscribe$0(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 137
    instance-of v0, p1, Ldev/ukanth/ufirewall/events/RulesEvent;

    if-eqz v0, :cond_0

    .line 138
    check-cast p1, Ldev/ukanth/ufirewall/events/RulesEvent;

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->ruleChangeApplyRules(Ldev/ukanth/ufirewall/events/RulesEvent;)V

    :cond_0
    return-void
.end method

.method private prepareLayout()V
    .locals 4

    const v0, 0x1020002

    .line 173
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 175
    sget v2, Ldev/ukanth/ufirewall/R$layout;->activity_prefs:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 177
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 178
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 181
    sget v0, Ldev/ukanth/ufirewall/R$id;->toolbar:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ldev/ukanth/ufirewall/R$string;->preferences:I

    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 183
    sget v1, Landroidx/appcompat/R$drawable;->abc_ic_ab_back_material:I

    invoke-static {p0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 185
    new-instance v1, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$2;-><init>(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private ruleChangeApplyRules(Ldev/ukanth/ufirewall/events/RulesEvent;)V
    .locals 2

    .line 146
    iget-object p1, p1, Ldev/ukanth/ufirewall/events/RulesEvent;->ctx:Landroid/content/Context;

    .line 147
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 148
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$1;-><init>(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;)V

    .line 149
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-static {p1, v1, v0}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method private subscribe()V
    .locals 2

    .line 135
    new-instance v0, Ldev/ukanth/ufirewall/events/RxEvent;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/events/RxEvent;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->rxEvent:Ldev/ukanth/ufirewall/events/RxEvent;

    .line 136
    new-instance v1, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/preferences/PreferencesActivity;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/events/RxEvent;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 407
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->updateBaseContextLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 260
    :cond_0
    const-class v1, Ldev/ukanth/ufirewall/preferences/UIPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/ThemePreferenceFragment;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/RulesPreferenceFragment;

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/LogPreferenceFragment;

    .line 263
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/ExpPreferenceFragment;

    .line 264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/CustomBinaryPreferenceFragment;

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/SecPreferenceFragment;

    .line 266
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/MultiProfilePreferenceFragment;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/WidgetPreferenceFragment;

    .line 268
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ldev/ukanth/ufirewall/preferences/LanguagePreferenceFragment;

    .line 269
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    const/4 p3, 0x1

    .line 195
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .line 274
    sget v0, Ldev/ukanth/ufirewall/R$xml;->preferences_headers:I

    invoke-virtual {p0, v0, p1}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->loadHeadersFromResource(ILjava/util/List;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->initTheme()V

    .line 114
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->prepareLayout()V

    .line 117
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->subscribe()V

    .line 118
    invoke-direct {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->handleIntentExtras()V

    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 223
    :cond_0
    invoke-static {p2}, Ldev/ukanth/ufirewall/Api;->fixFolderPermissionsAsync(Landroid/content/Context;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->rxEvent:Ldev/ukanth/ufirewall/events/RxEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->disposable:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 400
    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 402
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onIsMultiPane()Z
    .locals 1

    .line 287
    invoke-static {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->isXLargeTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->isSimplePreferences(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 250
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 247
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 238
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 239
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 240
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 279
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 230
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 231
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .line 309
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "showUid"

    .line 312
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "disableIcons"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "enableVPN"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "enableTether"

    .line 313
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "enableLAN"

    .line 314
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "enableRoam"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "locale"

    .line 315
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "showFilter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 316
    :cond_1
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadProfile()V

    const/4 v1, 0x1

    :goto_1
    const-string v2, "ipt_path"

    .line 320
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "dns_value"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->rxEvent:Ldev/ukanth/ufirewall/events/RxEvent;

    .line 321
    new-instance v3, Ldev/ukanth/ufirewall/events/RulesEvent;

    const-string v4, ""

    invoke-direct {v3, v4, v0}, Ldev/ukanth/ufirewall/events/RulesEvent;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/events/RxEvent;->publish(Ljava/lang/Object;)V

    .line 324
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->handleNotificationChanges(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)V

    .line 325
    invoke-direct {p0, p1, p2, v0}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->handleLogServiceChanges(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/Context;)V

    .line 326
    invoke-direct {p0, p2, v0, v1}, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;->handleProfileAndThemeChanges(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    return-void
.end method
