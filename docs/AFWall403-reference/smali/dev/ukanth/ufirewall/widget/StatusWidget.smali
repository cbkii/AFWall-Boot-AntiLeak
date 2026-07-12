.class public Ldev/ukanth/ufirewall/widget/StatusWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "StatusWidget.java"


# direct methods
.method public static synthetic $r8$lambda$Bk7tZIEmI0bQFHo7xVaFFEbMZSE(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/widget/StatusWidget;->lambda$showSuccessState$1(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KVq1NOnbhR52XOAj4oPI9UmU4N4(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/widget/StatusWidget;->lambda$showErrorState$0(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowErrorState(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showErrorState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowSuccessState(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showSuccessState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method private synthetic lambda$showErrorState$0(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    const-string v0, "AFWallStatus"

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Enabled"

    const/4 v2, 0x1

    .line 180
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 181
    invoke-direct {p0, p1, p2, p3, v0}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method

.method private synthetic lambda$showSuccessState$1(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 0

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method

.method private showErrorState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    const-string v0, "setBackgroundResource"

    .line 163
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$layout;->onoff_widget:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 165
    :try_start_0
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->widget_error:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->widget_off:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 170
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ldev/ukanth/ufirewall/widget/StatusWidget;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

    .line 171
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    const/high16 v3, 0x4000000

    .line 172
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 174
    invoke-virtual {p2, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 178
    new-instance v1, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const-wide/16 p1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showPendingState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 4

    .line 146
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$layout;->onoff_widget:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "setBackgroundResource"

    if-eqz p4, :cond_0

    .line 148
    :try_start_0
    sget v2, Ldev/ukanth/ufirewall/R$drawable;->widget_enabling:I

    goto :goto_0

    :cond_0
    sget v2, Ldev/ukanth/ufirewall/R$drawable;->widget_disabling:I

    .line 149
    :goto_0
    sget v3, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v0, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    if-eqz p4, :cond_1

    .line 152
    sget p4, Ldev/ukanth/ufirewall/R$drawable;->widget_on:I

    goto :goto_1

    :cond_1
    sget p4, Ldev/ukanth/ufirewall/R$drawable;->widget_off:I

    .line 153
    :goto_1
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v0, v2, v1, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 155
    :goto_2
    new-instance p4, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/widget/StatusWidget;

    invoke-direct {p4, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

    .line 156
    invoke-virtual {p4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    const/high16 v2, 0x4000000

    .line 157
    invoke-static {p1, v1, p4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 158
    sget p4, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v0, p4, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 159
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method

.method private showSuccessState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 8

    const-string v0, "setBackgroundResource"

    .line 186
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$layout;->onoff_widget:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 188
    :try_start_0
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->widget_success:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    if-eqz p4, :cond_0

    .line 191
    sget v2, Ldev/ukanth/ufirewall/R$drawable;->widget_on:I

    goto :goto_0

    :cond_0
    sget v2, Ldev/ukanth/ufirewall/R$drawable;->widget_off:I

    .line 192
    :goto_0
    sget v3, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 194
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ldev/ukanth/ufirewall/widget/StatusWidget;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

    .line 195
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, -0x1

    const/high16 v3, 0x4000000

    .line 196
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 197
    sget v2, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 198
    invoke-virtual {p2, p3, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 201
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    new-instance v1, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 3

    .line 132
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$layout;->onoff_widget:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    if-eqz p4, :cond_0

    .line 133
    sget p4, Ldev/ukanth/ufirewall/R$drawable;->widget_on:I

    goto :goto_0

    :cond_0
    sget p4, Ldev/ukanth/ufirewall/R$drawable;->widget_off:I

    .line 134
    :goto_0
    sget v1, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    const-string v2, "setBackgroundResource"

    invoke-virtual {v0, v1, v2, p4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 138
    new-instance p4, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/widget/StatusWidget;

    invoke-direct {p4, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

    .line 139
    invoke-virtual {p4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    const/high16 v2, 0x4000000

    .line 140
    invoke-static {p1, v1, p4, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 141
    sget p4, Ldev/ukanth/ufirewall/R$id;->widgetCanvas:I

    invoke-virtual {v0, p4, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    invoke-virtual {p2, p3, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 50
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "dev.ukanth.ufirewall.intent.action.STATUS_CHANGED"

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-class v1, Ldev/ukanth/ufirewall/widget/StatusWidget;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string v0, "dev.ukanth.ufirewall.intent.extra.STATUS"

    .line 54
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 56
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 57
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, v0, v1, p2}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "dev.ukanth.ufirewall.intent.action.TOGGLE_REQUEST"

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "AFWallStatus"

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "Enabled"

    const/4 v2, 0x1

    .line 67
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    xor-int/2addr p2, v2

    .line 68
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 69
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 72
    invoke-direct {p0, p1, v0, v1, p2}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showPendingState(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Protection Level: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AFWall"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->protectionLevel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "p0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableDeviceCheck()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 81
    new-instance p2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_enabled:I

    .line 82
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_error_enabling:I

    .line 83
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    .line 84
    invoke-virtual {p2, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    new-instance v3, Ldev/ukanth/ufirewall/widget/StatusWidget$1;

    invoke-direct {v3, p0, p1, v0, v1}, Ldev/ukanth/ufirewall/widget/StatusWidget$1;-><init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 85
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    .line 81
    invoke-static {p1, v2, p2}, Ldev/ukanth/ufirewall/Api;->applySavedIptablesRules(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    goto :goto_0

    .line 100
    :cond_2
    new-instance p2, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {p2}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_disabled:I

    .line 101
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setSuccessToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    sget v3, Ldev/ukanth/ufirewall/R$string;->toast_error_disabling:I

    .line 102
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    new-instance v3, Ldev/ukanth/ufirewall/widget/StatusWidget$2;

    invoke-direct {v3, p0, p1, v0, v1}, Ldev/ukanth/ufirewall/widget/StatusWidget$2;-><init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 103
    invoke-virtual {p2, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object p2

    .line 100
    invoke-static {p1, v2, p2}, Ldev/ukanth/ufirewall/Api;->purgeIptables(Landroid/content/Context;ZLdev/ukanth/ufirewall/service/RootCommand;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3

    .line 124
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    const-string v0, "AFWallStatus"

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Enabled"

    const/4 v2, 0x1

    .line 126
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 127
    invoke-direct {p0, p1, p2, p3, v0}, Ldev/ukanth/ufirewall/widget/StatusWidget;->showWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method
