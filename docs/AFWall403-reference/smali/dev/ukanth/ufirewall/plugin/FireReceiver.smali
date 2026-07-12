.class public final Ldev/ukanth/ufirewall/plugin/FireReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FireReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AFWall"


# direct methods
.method static bridge synthetic -$$Nest$msendMessage(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 1

    .line 291
    :try_start_0
    new-instance v0, Ldev/ukanth/ufirewall/plugin/FireReceiver$7;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/plugin/FireReceiver$7;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;)V

    .line 296
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/plugin/FireReceiver$7;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "com.twofortyfouram.locale.intent.action.FIRE_SETTING"

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-static/range {p2 .. p2}, Ldev/ukanth/ufirewall/plugin/BundleScrubber;->scrub(Landroid/content/Intent;)Z

    const-string v3, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    .line 61
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ldev/ukanth/ufirewall/plugin/BundleScrubber;->scrub(Landroid/os/Bundle;)Z

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 67
    invoke-static {v2}, Ldev/ukanth/ufirewall/plugin/PluginBundleManager;->isBundleValid(Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "dev.ukanth.ufirewall.plugin.APPLY_PROFILE"

    .line 68
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "::"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    aget-object v3, v2, v5

    .line 73
    aget-object v2, v2, v6

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 75
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v4

    .line 76
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->disableTaskerToast()Z

    move-result v7

    .line 77
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v8

    const-string v9, "AFWallPrefs"

    const-string v10, "p0"

    const/4 v11, 0x2

    const-string v12, "2"

    const-string v13, "1"

    const-string v14, "0"

    const/4 v15, -0x1

    if-nez v8, :cond_d

    if-eqz v2, :cond_16

    .line 80
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    const/4 v11, -0x1

    goto :goto_2

    :pswitch_0
    const-string v8, "5"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v11, 0x5

    goto :goto_2

    :pswitch_1
    const-string v8, "4"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    const/4 v11, 0x4

    goto :goto_2

    :pswitch_2
    const-string v8, "3"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x3

    goto :goto_2

    :pswitch_3
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :pswitch_4
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :pswitch_5
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :cond_7
    :goto_2
    packed-switch v11, :pswitch_data_1

    if-eqz v4, :cond_9

    .line 139
    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_3

    :pswitch_6
    if-eqz v4, :cond_9

    const-string v3, "AFWallProfile3"

    .line 134
    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_3

    :pswitch_7
    if-eqz v4, :cond_9

    const-string v3, "AFWallProfile2"

    .line 129
    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_3

    :pswitch_8
    if-eqz v4, :cond_9

    const-string v3, "AFWallProfile1"

    .line 124
    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_3

    :pswitch_9
    if-eqz v4, :cond_9

    .line 119
    invoke-static {v6, v9}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_3

    .line 100
    :pswitch_a
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 101
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    .line 102
    invoke-virtual {v3, v6}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v8, Ldev/ukanth/ufirewall/plugin/FireReceiver$2;

    invoke-direct {v8, v0, v1}, Ldev/ukanth/ufirewall/plugin/FireReceiver$2;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/content/Context;)V

    .line 103
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 101
    invoke-static {v1, v6, v3}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_3

    .line 112
    :cond_8
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 113
    sget v8, Ldev/ukanth/ufirewall/R$string;->widget_disable_fail:I

    iput v8, v3, Landroid/os/Message;->arg1:I

    .line 114
    invoke-direct {v0, v3}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 82
    :pswitch_b
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v8, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 83
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v8, Ldev/ukanth/ufirewall/plugin/FireReceiver$1;

    invoke-direct {v8, v0, v1}, Ldev/ukanth/ufirewall/plugin/FireReceiver$1;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/content/Context;)V

    .line 84
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 82
    invoke-static {v1, v5, v3}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    .line 144
    :cond_9
    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v6, :cond_16

    if-eqz v4, :cond_c

    .line 146
    invoke-static/range {p1 .. p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v7, :cond_a

    .line 148
    sget v2, Ldev/ukanth/ufirewall/R$string;->tasker_apply:I

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_a
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 151
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;

    invoke-direct {v3, v0, v7}, Ldev/ukanth/ufirewall/plugin/FireReceiver$3;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Z)V

    .line 152
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 150
    invoke-static {v1, v5, v2}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_4

    .line 168
    :cond_b
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 169
    sget v3, Ldev/ukanth/ufirewall/R$string;->tasker_disabled:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 170
    invoke-direct {v0, v2}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    goto :goto_4

    .line 173
    :cond_c
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 174
    sget v3, Ldev/ukanth/ufirewall/R$string;->tasker_muliprofile:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 175
    invoke-direct {v0, v2}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    .line 177
    :goto_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    .line 181
    invoke-static/range {p1 .. p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    goto/16 :goto_9

    :cond_d
    if-eqz v2, :cond_16

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    packed-switch v8, :pswitch_data_2

    :goto_5
    const/4 v11, -0x1

    goto :goto_6

    :pswitch_c
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto :goto_5

    :pswitch_d
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_5

    :cond_e
    const/4 v11, 0x1

    goto :goto_6

    :pswitch_e
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    :cond_10
    :goto_6
    packed-switch v11, :pswitch_data_3

    if-eqz v4, :cond_12

    .line 235
    invoke-static {v3}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 237
    invoke-virtual {v3}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_7

    :pswitch_f
    if-eqz v4, :cond_12

    .line 230
    invoke-static {v6, v9}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_7

    .line 207
    :pswitch_10
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 208
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    .line 209
    invoke-virtual {v3, v6}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v8, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;

    invoke-direct {v8, v0, v1}, Ldev/ukanth/ufirewall/plugin/FireReceiver$5;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/content/Context;)V

    .line 210
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 208
    invoke-static {v1, v6, v3}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_7

    .line 223
    :cond_11
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 224
    sget v8, Ldev/ukanth/ufirewall/R$string;->widget_disable_fail:I

    iput v8, v3, Landroid/os/Message;->arg1:I

    .line 225
    invoke-direct {v0, v3}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    goto :goto_7

    .line 189
    :pswitch_11
    new-instance v3, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v3}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v8, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 190
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    new-instance v8, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;

    invoke-direct {v8, v0, v1}, Ldev/ukanth/ufirewall/plugin/FireReceiver$4;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Landroid/content/Context;)V

    .line 191
    invoke-virtual {v3, v8}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v3

    .line 189
    invoke-static {v1, v5, v3}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    .line 244
    :cond_12
    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v6, :cond_16

    if-eqz v4, :cond_15

    .line 246
    invoke-static/range {p1 .. p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v7, :cond_13

    .line 248
    sget v2, Ldev/ukanth/ufirewall/R$string;->tasker_apply:I

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 250
    :cond_13
    new-instance v2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->error_apply:I

    .line 251
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    new-instance v3, Ldev/ukanth/ufirewall/plugin/FireReceiver$6;

    invoke-direct {v3, v0, v7}, Ldev/ukanth/ufirewall/plugin/FireReceiver$6;-><init>(Ldev/ukanth/ufirewall/plugin/FireReceiver;Z)V

    .line 252
    invoke-virtual {v2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v2

    .line 250
    invoke-static {v1, v5, v2}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_8

    .line 266
    :cond_14
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 267
    sget v3, Ldev/ukanth/ufirewall/R$string;->tasker_disabled:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 268
    invoke-direct {v0, v2}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    goto :goto_8

    .line 271
    :cond_15
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 272
    sget v3, Ldev/ukanth/ufirewall/R$string;->tasker_muliprofile:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 273
    invoke-direct {v0, v2}, Ldev/ukanth/ufirewall/plugin/FireReceiver;->sendMessage(Landroid/os/Message;)V

    .line 275
    :goto_8
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    .line 279
    invoke-static/range {p1 .. p1}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    :cond_16
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
