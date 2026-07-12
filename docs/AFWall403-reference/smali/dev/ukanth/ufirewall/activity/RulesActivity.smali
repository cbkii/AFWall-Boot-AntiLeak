.class public Ldev/ukanth/ufirewall/activity/RulesActivity;
.super Ldev/ukanth/ufirewall/activity/DataDumpActivity;
.source "RulesActivity.java"


# static fields
.field protected static final MENU_FLUSH_RULES:I = 0xc

.field protected static final MENU_IPV4_RULES:I = 0x14

.field protected static final MENU_IPV6_RULES:I = 0x13

.field protected static final MENU_SEND_REPORT:I = 0x19

.field protected static result:Ljava/lang/StringBuilder;


# instance fields
.field protected showIPv6:Z


# direct methods
.method public static synthetic $r8$lambda$3WIHvKH__gO5w_a24xdnrs4efRw(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/RulesActivity;->lambda$flushAllRules$1(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tspzhF7FJXokCLh19nczbyr4QMk(Ldev/ukanth/ufirewall/activity/RulesActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->lambda$updateLoadingState$0(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLoadingState(Ldev/ukanth/ufirewall/activity/RulesActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->updateLoadingState(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    return-void
.end method

.method private flushAllRules(Landroid/content/Context;)V
    .locals 2

    .line 347
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 348
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->flushRulesConfirm:I

    .line 349
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 350
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->No:I

    .line 351
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    .line 352
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda2;-><init>()V

    .line 365
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private synthetic lambda$flushAllRules$1(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 353
    new-instance p3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p3, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    sget v0, Ldev/ukanth/ufirewall/R$string;->flushed:I

    .line 355
    invoke-virtual {p3, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    sget v0, Ldev/ukanth/ufirewall/R$string;->error_purge:I

    .line 356
    invoke-virtual {p3, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    new-instance v0, Ldev/ukanth/ufirewall/activity/RulesActivity$5;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$5;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    .line 357
    invoke-virtual {p3, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p3

    .line 353
    invoke-static {p1, p3}, Ldev/ukanth/ufirewall/Api;->flushAllRules(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    .line 362
    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$flushAllRules$2(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 365
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$updateLoadingState$0(Ljava/lang/String;)V
    .locals 2

    .line 284
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules_status:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 285
    sget v1, Ldev/ukanth/ufirewall/R$id;->rules_title:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz v1, :cond_2

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    if-eqz p1, :cond_1

    .line 290
    sget p1, Ldev/ukanth/ufirewall/R$string;->ipv6_rules_title:I

    goto :goto_0

    :cond_1
    sget p1, Ldev/ukanth/ufirewall/R$string;->ipv4_rules_title:I

    :goto_0
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateLoadingState(Ljava/lang/String;)V
    .locals 1

    .line 283
    new-instance v0, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x3d

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "\n"

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p2, "\n\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method protected appendIfconfig(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "ifconfig"

    const/4 v2, 0x1

    .line 230
    invoke-direct {p0, v0, v2, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 231
    sget v0, Ldev/ukanth/ufirewall/R$string;->loading_system_info:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->updateLoadingState(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    .line 233
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/RulesActivity$2;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$2;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 232
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->runIfconfig(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method protected appendNetworkInterfaces(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "Network interfaces"

    const/4 v2, 0x1

    .line 244
    invoke-direct {p0, v0, v2, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 245
    new-instance v0, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    .line 246
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/RulesActivity$3;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$3;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    .line 247
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 245
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->runNetworkInterface(Landroid/content/Context;Ldev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method protected appendPreferences(Landroid/content/Context;)V
    .locals 7

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "Preferences"

    const/4 v2, 0x1

    .line 109
    invoke-direct {p0, v0, v2, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 112
    :try_start_0
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/util/TreeSet;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "\n"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 114
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "Profile Mode : "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v3, "BlockMode"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "Status : "

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Enabled"

    goto :goto_1

    :cond_1
    const-string p1, "Disabled"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    sget-object p1, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v0, "Error retrieving preferences\n"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    sget-object p1, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v0, "Logcat"

    .line 125
    invoke-direct {p0, p1, v2, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object p1, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    .line 126
    invoke-static {}, Ldev/ukanth/ufirewall/log/Log;->getLog()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->setData(Ljava/lang/String;)V

    return-void
.end method

.method protected appendSystemInfo(Landroid/content/Context;)V
    .locals 8

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v1, "System info"

    const/4 v2, 0x1

    .line 176
    invoke-direct {p0, v0, v2, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v0, 0x0

    .line 178
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object v1

    sget-object v3, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v4, "Android version: "

    .line 180
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v5, "Manufacturer: "

    .line 181
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v5, "Model: "

    .line 182
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v5, "Build: "

    .line 183
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    if-nez v3, :cond_0

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Active interface: mobile\n"

    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 187
    :cond_0
    iget v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    if-ne v3, v2, :cond_1

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Active interface: wifi\n"

    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Active interface: unknown\n"

    .line 190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Wifi Tether status: "

    .line 192
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherWifiStatusKnown:Z

    const-string v5, "unknown"

    const-string v6, "yes"

    const-string v7, "no"

    if-eqz v3, :cond_3

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->isWifiTethered:Z

    if-eqz v3, :cond_2

    move-object v3, v6

    goto :goto_1

    :cond_2
    move-object v3, v7

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Bluetooth Tether status: "

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherBluetoothStatusKnown:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->isBluetoothTethered:Z

    if-eqz v3, :cond_4

    move-object v3, v6

    goto :goto_2

    :cond_4
    move-object v3, v7

    goto :goto_2

    :cond_5
    move-object v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Usb Tether status: "

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->tetherUsbStatusKnown:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->isUsbTethered:Z

    if-eqz v3, :cond_6

    move-object v5, v6

    goto :goto_3

    :cond_6
    move-object v5, v7

    :cond_7
    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "Roam status: "

    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->isRoaming:Z

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, v7

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "IPv4 subnets: "

    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const-string v5, "none"

    const-string v6, ", "

    if-eqz v3, :cond_9

    move-object v3, v5

    goto :goto_5

    :cond_9
    iget-object v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV4:Ljava/util/List;

    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    const-string v3, "IPv6 subnets: "

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    iget-object v1, v1, Ldev/ukanth/ufirewall/InterfaceDetails;->lanMaskV6:Ljava/util/List;

    invoke-static {v6, v1}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    new-instance v1, Ldev/ukanth/ufirewall/activity/RulesActivity$1;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    new-array p1, v0, [Ljava/lang/Void;

    .line 224
    invoke-virtual {v1, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected getFileInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": not present\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSuInfo(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 15

    const-string v0, "com.koushikdutta.superuser"

    const-string v1, "com.noshufou.android.su"

    const-string v2, "com.noshufou.android.su.elite"

    const-string v3, "com.koushikdutta.superuser"

    const-string v4, "com.gorserapp.superuser"

    const-string v5, "me.phh.superuser"

    const-string v6, "com.bitcubate.superuser.pro"

    const-string v7, "com.kingroot.kinguser"

    const-string v8, "com.kingroot.master"

    const-string v9, "com.kingouser.com"

    const-string v10, "com.m0narx.su"

    const-string v11, "com.miui.uac"

    const-string v12, "eu.chainfire.supersu"

    const-string v13, "eu.chainfire.supersu.pro"

    const-string v14, "com.topjohnwu.magisk"

    .line 143
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 162
    aget-object v3, v0, v2

    move-object/from16 v4, p1

    .line 164
    :try_start_0
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "none found"

    :goto_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    sget p1, Ldev/ukanth/ufirewall/R$string;->showrules_title:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "validate"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    check-cast p1, Ljava/lang/String;

    const-string v0, "yes"

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    new-instance p1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x19

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x102002c

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    .line 342
    invoke-super {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iput-boolean v3, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    .line 316
    sget p1, Ldev/ukanth/ufirewall/R$string;->loading:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->updateLoadingState(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0, p0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->populateData(Landroid/content/Context;)V

    return v2

    :cond_1
    iput-boolean v2, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    .line 311
    sget p1, Ldev/ukanth/ufirewall/R$string;->loading:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->updateLoadingState(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0, p0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->populateData(Landroid/content/Context;)V

    return v2

    .line 303
    :cond_2
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->onBackPressed()V

    return v2

    .line 322
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "???"

    .line 326
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ldev/ukanth/ufirewall/activity/RulesActivity;->dataText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ldev/ukanth/ufirewall/R$string;->enter_problem:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "plain/text"

    .line 329
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "afwall-report@googlegroups.com"

    .line 330
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AFWall+ problem report - v"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TEXT"

    .line 332
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    sget p1, Ldev/ukanth/ufirewall/R$string;->send_mail:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 307
    :cond_4
    invoke-direct {p0, p0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->flushAllRules(Landroid/content/Context;)V

    return v2
.end method

.method protected populateData(Landroid/content/Context;)V
    .locals 3

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    .line 260
    sget v0, Ldev/ukanth/ufirewall/R$string;->loading:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/activity/RulesActivity;->updateLoadingState(Ljava/lang/String;)V

    sget-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->result:Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    if-eqz v1, :cond_0

    .line 263
    sget v1, Ldev/ukanth/ufirewall/R$string;->ipv6_rules_title:I

    goto :goto_0

    :cond_0
    sget v1, Ldev/ukanth/ufirewall/R$string;->ipv4_rules_title:I

    :goto_0
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Ldev/ukanth/ufirewall/activity/RulesActivity;->writeHeading(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    if-eqz v0, :cond_1

    const-string v0, "IPv6rules.log"

    .line 265
    sput-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->sdDumpFile:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "IPv4rules.log"

    .line 267
    sput-object v0, Ldev/ukanth/ufirewall/activity/RulesActivity;->sdDumpFile:Ljava/lang/String;

    :goto_1
    iget-boolean v0, p0, Ldev/ukanth/ufirewall/activity/RulesActivity;->showIPv6:Z

    .line 269
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    const/4 v2, 0x1

    .line 270
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_fetch:I

    .line 272
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/activity/RulesActivity$4;

    invoke-direct {v2, p0, p1}, Ldev/ukanth/ufirewall/activity/RulesActivity$4;-><init>(Ldev/ukanth/ufirewall/activity/RulesActivity;Landroid/content/Context;)V

    .line 273
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 269
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->fetchIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    return-void
.end method

.method protected populateMenu(Landroid/view/SubMenu;)V
    .locals 3

    .line 86
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableIPv6()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    .line 87
    sget v2, Ldev/ukanth/ufirewall/R$string;->switch_ipv6:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_rules:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x14

    .line 88
    sget v2, Ldev/ukanth/ufirewall/R$string;->switch_ipv4:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_rules:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/16 v0, 0xc

    .line 90
    sget v2, Ldev/ukanth/ufirewall/R$string;->flush:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_clearlog:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x19

    .line 91
    sget v2, Ldev/ukanth/ufirewall/R$string;->send_report:I

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_mail:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method
