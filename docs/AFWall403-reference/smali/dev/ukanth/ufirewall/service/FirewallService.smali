.class public Ldev/ukanth/ufirewall/service/FirewallService;
.super Landroid/app/Service;
.source "FirewallService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AFWall"

.field private static btConnectionRequested:Z = false

.field private static btPanProfile:Landroid/bluetooth/BluetoothProfile; = null

.field private static instance:Ldev/ukanth/ufirewall/service/FirewallService; = null

.field private static logServiceActive:Z = false


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field connectivityReciver:Landroid/content/BroadcastReceiver;

.field public context:Landroid/content/Context;

.field filter:Landroid/content/IntentFilter;

.field packageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfputbtPanProfile(Landroid/bluetooth/BluetoothProfile;)V
    .locals 0

    sput-object p0, Ldev/ukanth/ufirewall/service/FirewallService;->btPanProfile:Landroid/bluetooth/BluetoothProfile;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private addNotification()V
    .locals 13

    .line 83
    sget v0, Ldev/ukanth/ufirewall/R$string;->firewall_service:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 85
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/service/FirewallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x1

    .line 86
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "firewall.service"

    const/16 v9, 0x1a

    if-lt v3, v9, :cond_1

    .line 89
    invoke-static {v8, v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 90
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;I)V

    .line 92
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getNotificationPriority()I

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-static {v0, v4}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0, v6}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;I)V

    .line 97
    :goto_0
    invoke-static {v0, v5, v5}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 98
    invoke-static {v0, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/app/NotificationChannel;Z)V

    .line 99
    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationChannel;Z)V

    .line 100
    invoke-static {v0, v7}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m$2(Landroid/app/NotificationChannel;Z)V

    .line 101
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 105
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Ldev/ukanth/ufirewall/MainActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.MAIN"

    .line 106
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    .line 107
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x24000000

    .line 108
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v3

    const/4 v10, -0x1

    const-string v11, "AFWall"

    if-eqz v3, :cond_8

    .line 119
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 121
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :goto_1
    const/4 v4, -0x1

    goto :goto_2

    :sswitch_0
    const-string v6, "AFWallPrefs"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :sswitch_1
    const-string v4, "AFWallProfile3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_2
    const-string v4, "AFWallProfile2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_3
    const-string v4, "AFWallProfile1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 135
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 123
    :pswitch_0
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v4, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "default"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 132
    :pswitch_1
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v4, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "profile3"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 129
    :pswitch_2
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v4, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "profile2"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 126
    :pswitch_3
    sget-object v3, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v4, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "profile1"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v6, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v6}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 140
    :cond_6
    sget v3, Ldev/ukanth/ufirewall/R$string;->active:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    sget-boolean v4, Ldev/ukanth/ufirewall/service/FirewallService;->logServiceActive:Z

    if-eqz v4, :cond_7

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u2022 "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Ldev/ukanth/ufirewall/R$string;->log_monitoring:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_7
    sget v4, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    .line 148
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Firewall ENABLED - notification text: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 150
    :cond_8
    sget v3, Ldev/ukanth/ufirewall/R$string;->inactive:I

    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 151
    sget v4, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Firewall DISABLED - notification text: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/high16 v6, 0x4000000

    .line 156
    invoke-static {p0, v7, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    new-instance v6, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v6, p0, v8}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 161
    sget v0, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 162
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v6, Ldev/ukanth/ufirewall/R$string;->app_name:I

    .line 163
    invoke-virtual {p0, v6}, Ldev/ukanth/ufirewall/service/FirewallService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v8}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v10}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v5, "service"

    .line 167
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_9

    const/high16 v1, 0x40000000    # 2.0f

    .line 175
    invoke-static {p0, v2, v0, v1}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/FirewallService;ILandroid/app/Notification;I)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated notification via startForeground (Android 14+): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_a

    .line 178
    invoke-virtual {p0, v2, v0}, Ldev/ukanth/ufirewall/service/FirewallService;->startForeground(ILandroid/app/Notification;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated notification via startForeground (Android 8+): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 181
    :cond_a
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activeNotification()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 182
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Updated notification via notify: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2dd7ba9 -> :sswitch_3
        -0x2dd7ba8 -> :sswitch_2
        -0x2dd7ba7 -> :sswitch_1
        0x67c32061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBTAdapter(Landroid/content/Context;)Landroid/bluetooth/BluetoothAdapter;
    .locals 2

    .line 285
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.bluetooth"

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "AFWall"

    if-eqz p1, :cond_0

    .line 288
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    const-string v1, "Bluetooth PAN profile connection disabled to prevent service leaks"

    .line 292
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "Device does not support Bluetooth, skipping"

    .line 294
    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static getBtPanProfile()Landroid/bluetooth/BluetoothProfile;
    .locals 2

    const-string v0, "AFWall"

    const-string v1, "Bluetooth PAN profile disabled, returning null"

    .line 341
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static isInstanceRunning()Z
    .locals 1

    sget-object v0, Ldev/ukanth/ufirewall/service/FirewallService;->instance:Ldev/ukanth/ufirewall/service/FirewallService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$refreshNotification$0()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/service/FirewallService;->instance:Ldev/ukanth/ufirewall/service/FirewallService;

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {v0}, Ldev/ukanth/ufirewall/service/FirewallService;->addNotification()V

    const-string v0, "AFWall"

    const-string v1, "FirewallService notification refreshed"

    .line 225
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static refreshNotification()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/service/FirewallService;->instance:Ldev/ukanth/ufirewall/service/FirewallService;

    const-string v1, "AFWall"

    if-eqz v0, :cond_0

    const-string v0, "Refreshing FirewallService notification"

    .line 220
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Ldev/ukanth/ufirewall/service/FirewallService$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/FirewallService$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "Cannot refresh notification - FirewallService instance is null"

    .line 229
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerBTListener()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/FirewallService;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ldev/ukanth/ufirewall/service/FirewallService$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/service/FirewallService$1;-><init>(Ldev/ukanth/ufirewall/service/FirewallService;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/service/FirewallService;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    :cond_0
    return-void
.end method

.method public static setLogServiceActive(Z)V
    .locals 0

    sput-boolean p0, Ldev/ukanth/ufirewall/service/FirewallService;->logServiceActive:Z

    sget-object p0, Ldev/ukanth/ufirewall/service/FirewallService;->instance:Ldev/ukanth/ufirewall/service/FirewallService;

    if-eqz p0, :cond_0

    .line 204
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/FirewallService;->addNotification()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Ldev/ukanth/ufirewall/service/FirewallService;->context:Landroid/content/Context;

    sput-object p0, Ldev/ukanth/ufirewall/service/FirewallService;->instance:Ldev/ukanth/ufirewall/service/FirewallService;

    const/4 v0, 0x0

    sput-boolean v0, Ldev/ukanth/ufirewall/service/FirewallService;->logServiceActive:Z

    const-string v0, "AFWall"

    const-string v1, "FirewallService created, logServiceActive reset to false"

    .line 58
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 7

    const-string v0, "Bluetooth cleanup completed"

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x0

    const-string v4, "AFWall"

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v5, Ldev/ukanth/ufirewall/service/FirewallService;->btPanProfile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v5, :cond_2

    const/4 v6, 0x5

    .line 313
    invoke-virtual {v1, v6, v5}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    sput-object v2, Ldev/ukanth/ufirewall/service/FirewallService;->btPanProfile:Landroid/bluetooth/BluetoothProfile;

    const-string v1, "Closed Bluetooth PAN profile proxy"

    .line 315
    invoke-static {v4, v1}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sput-boolean v3, Ldev/ukanth/ufirewall/service/FirewallService;->btConnectionRequested:Z

    .line 324
    invoke-static {v4, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v5, "Error closing bt profile"

    .line 318
    invoke-static {v4, v5, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sput-boolean v3, Ldev/ukanth/ufirewall/service/FirewallService;->btConnectionRequested:Z

    .line 324
    invoke-static {v4, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    throw v1

    :cond_3
    sget-boolean v0, Ldev/ukanth/ufirewall/service/FirewallService;->btConnectionRequested:Z

    if-nez v0, :cond_4

    sget-object v0, Ldev/ukanth/ufirewall/service/FirewallService;->btPanProfile:Landroid/bluetooth/BluetoothProfile;

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "Bluetooth adapter is null but connection state exists, cleaning up"

    .line 328
    invoke-static {v4, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Ldev/ukanth/ufirewall/service/FirewallService;->btPanProfile:Landroid/bluetooth/BluetoothProfile;

    iput-object v2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->btListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    sput-boolean v3, Ldev/ukanth/ufirewall/service/FirewallService;->btConnectionRequested:Z

    .line 333
    :cond_5
    :goto_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 236
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/FirewallService;->addNotification()V

    .line 237
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/FirewallService;->registerBTListener()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_1

    .line 245
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/service/FirewallService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_1
    new-instance p1, Ldev/ukanth/ufirewall/broadcast/ConnectivityChangeReceiver;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/broadcast/ConnectivityChangeReceiver;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->filter:Landroid/content/IntentFilter;

    const-string p2, "android.net.conn.TETHER_STATE_CHANGED"

    .line 250
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p2, 0x2

    const/16 p3, 0x21

    if-lt p1, p3, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/FirewallService;->filter:Landroid/content/IntentFilter;

    .line 252
    invoke-static {p0, p1, v0, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/FirewallService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->connectivityReciver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/FirewallService;->filter:Landroid/content/IntentFilter;

    .line 254
    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/service/FirewallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 259
    new-instance v1, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/broadcast/PackageBroadcast;-><init>()V

    iput-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, p3, :cond_3

    iget-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    .line 262
    invoke-static {p0, v1, p1, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/FirewallService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    .line 264
    invoke-virtual {p0, v1, p1}, Ldev/ukanth/ufirewall/service/FirewallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    :goto_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p3, :cond_4

    iget-object p3, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    invoke-static {p0, p3, p1, p2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/service/FirewallService;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Ldev/ukanth/ufirewall/service/FirewallService;->packageReceiver:Landroid/content/BroadcastReceiver;

    .line 274
    invoke-virtual {p0, p2, p1}, Ldev/ukanth/ufirewall/service/FirewallService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2
    const-string p1, "AFWall"

    const-string p2, "Bluetooth initialization disabled to prevent service connection leaks"

    .line 278
    invoke-static {p1, p2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method
