.class public Ldev/ukanth/ufirewall/activity/OldLogActivity;
.super Ldev/ukanth/ufirewall/activity/DataDumpActivity;
.source "OldLogActivity.java"


# static fields
.field protected static final MENU_CLEARLOG:I = 0x7

.field protected static final MENU_SWITCH_NEW:I = 0x46


# direct methods
.method public static synthetic $r8$lambda$TXJWA_O5HDhPJzVrh60z_iqu-RI(Ldev/ukanth/ufirewall/activity/OldLogActivity;Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->lambda$clearDatabase$0(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;-><init>()V

    return-void
.end method

.method private clearDatabase(Landroid/content/Context;)V
    .locals 4

    .line 103
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->clear_log:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/activity/OldLogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/OldLogActivity;Landroid/content/Context;)V

    .line 106
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/activity/OldLogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/activity/OldLogActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 113
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 114
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->No:I

    .line 115
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private synthetic lambda$clearDatabase$0(Landroid/content/Context;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    const-string p3, "Logs"

    .line 108
    invoke-static {p3}, Lcom/raizlabs/android/dbflow/config/FlowManager;->getDatabase(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;

    move-result-object p3

    invoke-virtual {p3}, Lcom/raizlabs/android/dbflow/config/DatabaseDefinition;->reset()V

    .line 109
    sget p3, Ldev/ukanth/ufirewall/R$string;->log_cleared:I

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 110
    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 111
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->fetchLogs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->parseAndSet(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$clearDatabase$1(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Ldev/ukanth/ufirewall/R$string;->showlog_title:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string p1, "iptables.log"

    .line 56
    sput-object p1, Ldev/ukanth/ufirewall/activity/OldLogActivity;->sdDumpFile:Ljava/lang/String;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x46

    if-eq v0, v1, :cond_1

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 98
    invoke-super {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 85
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->onBackPressed()V

    return v2

    .line 89
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 90
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->oldLogView(Z)Z

    .line 91
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->finish()V

    return v2

    .line 95
    :cond_2
    invoke-direct {p0, p0}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->clearDatabase(Landroid/content/Context;)V

    return v2
.end method

.method protected parseAndSet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/log/LogInfo;->parseLog(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 62
    sget p1, Ldev/ukanth/ufirewall/R$string;->log_parse_error:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->setData(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->setData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected populateData(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-static {}, Ldev/ukanth/ufirewall/Api;->fetchLogs()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/OldLogActivity;->parseAndSet(Ljava/util/List;)V

    return-void
.end method

.method protected populateMenu(Landroid/view/SubMenu;)V
    .locals 3

    const/4 v0, 0x7

    .line 73
    sget v1, Ldev/ukanth/ufirewall/R$string;->clear_log:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_clearlog:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v0, 0x46

    .line 74
    sget v1, Ldev/ukanth/ufirewall/R$string;->switch_new:I

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_log:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return-void
.end method
