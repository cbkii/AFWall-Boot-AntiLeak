.class public Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;
.super Landroid/app/Activity;
.source "ToggleWidgetOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static defaultButton:Landroid/widget/Button;

.field private static disableButton:Landroid/widget/Button;

.field private static enableButton:Landroid/widget/Button;

.field private static profButton1:Landroid/widget/Button;

.field private static profButton2:Landroid/widget/Button;

.field private static profButton3:Landroid/widget/Button;


# instance fields
.field private buttonId:I

.field private profileName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mdisableCustom(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableCustom(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableDefault(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableDefault()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableOthers(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->enableOthers()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdefaultButton()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->defaultButton:Landroid/widget/Button;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetdisableButton()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableButton:Landroid/widget/Button;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetenableButton()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->enableButton:Landroid/widget/Button;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprofButton1()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprofButton2()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetprofButton3()Landroid/widget/Button;
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private disableCustom(Ljava/lang/String;)V
    .locals 1

    .line 461
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$8;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private disableDefault()V
    .locals 1

    .line 448
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$7;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$7;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private disableOthers()V
    .locals 1

    .line 435
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$6;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$6;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private enableOthers()V
    .locals 1

    .line 419
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$5;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$5;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runProfile(Ljava/lang/String;)V
    .locals 3

    .line 215
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$1;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    .line 222
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 223
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;

    invoke-direct {v2, p0, p1, v1, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    .line 248
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$2;->start()V

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->defaultButton:Landroid/widget/Button;

    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 250
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 251
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 252
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 253
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 254
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 255
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 256
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 257
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 258
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 259
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 260
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 261
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startAction(I)V
    .locals 3

    .line 267
    new-instance v0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$3;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$3;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;)V

    .line 274
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 275
    new-instance v2, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;

    invoke-direct {v2, p0, p1, v1, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;-><init>(Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;ILandroid/content/Context;Landroid/os/Handler;)V

    .line 415
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity$4;->start()V

    return-void
.end method

.method private switchAction()V
    .locals 2

    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 140
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_enable_firewall:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 142
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_disable_firewall:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 143
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 144
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_default_profile:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 145
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 146
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_profile1:I

    if-ne v0, v1, :cond_4

    .line 147
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 148
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profileName:Ljava/lang/String;

    .line 150
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 152
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_profile2:I

    if-ne v0, v1, :cond_6

    .line 153
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    .line 154
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profileName:Ljava/lang/String;

    .line 156
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 158
    sget v1, Ldev/ukanth/ufirewall/R$id;->toggle_profile3:I

    if-ne v0, v1, :cond_8

    .line 159
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    .line 160
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->startAction(I)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profileName:Ljava/lang/String;

    .line 162
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->runProfile(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 169
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x4bc

    const/4 v0, -0x1

    if-eq p1, p3, :cond_2

    const/16 p3, 0x261b

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eq p2, v0, :cond_1

    .line 192
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->finish()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->switchAction()V

    goto :goto_0

    :cond_2
    if-eq p2, v0, :cond_3

    .line 177
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->finish()V

    .line 178
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->switchAction()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 202
    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profileName:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iput p1, p0, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->buttonId:I

    .line 205
    new-instance p1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    .line 206
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->isPasswordProtected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->switchAction()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget p1, Ldev/ukanth/ufirewall/R$layout;->toggle_widget_old_view:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->setContentView(I)V

    .line 48
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_enable_firewall:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->enableButton:Landroid/widget/Button;

    .line 49
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_disable_firewall:I

    .line 50
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableButton:Landroid/widget/Button;

    .line 51
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_default_profile:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->defaultButton:Landroid/widget/Button;

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->enableButton:Landroid/widget/Button;

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableButton:Landroid/widget/Button;

    .line 54
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->defaultButton:Landroid/widget/Button;

    .line 55
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_profile1:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 58
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_profile2:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 59
    sget p1, Ldev/ukanth/ufirewall/R$id;->toggle_profile3:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sput-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->enableOthers()V

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableOthers()V

    .line 67
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 68
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile1"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 69
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile2"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 70
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "profile3"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_1
    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    const/4 v1, 0x4

    .line 73
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    const-string p1, "AFWallProfile1"

    .line 77
    invoke-static {p1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    const-string p1, "AFWallProfile2"

    .line 80
    invoke-static {p1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    const-string p1, "AFWallProfile3"

    .line 83
    invoke-static {p1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 84
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    :cond_4
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_8

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    goto :goto_1

    :cond_5
    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 95
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 97
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 98
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 101
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 102
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 103
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 104
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 105
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 108
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v4}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 110
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 111
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 112
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_7
    sget-object v1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 91
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/profiles/ProfileData;

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 92
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_8
    :goto_2
    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 119
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 120
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 121
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton1:Landroid/widget/Button;

    .line 124
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton2:Landroid/widget/Button;

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object p1, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->profButton3:Landroid/widget/Button;

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 128
    :cond_9
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 129
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AFWallPrefs"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 131
    invoke-direct {p0}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableDefault()V

    goto :goto_3

    .line 133
    :cond_a
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/widget/ToggleWidgetOldActivity;->disableCustom(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method
