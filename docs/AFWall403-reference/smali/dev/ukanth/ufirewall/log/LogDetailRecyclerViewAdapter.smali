.class public Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LogDetailRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectionAttempts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private data:Ldev/ukanth/ufirewall/log/LogData;

.field private final interfaceNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation
.end field

.field private final recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

.field private final serviceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->connectionAttempts:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->serviceCache:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->interfaceNameCache:Ljava/util/Map;

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    iput-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    return-void
.end method

.method private formatBytes(I)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "B"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/high16 v0, 0x100000

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    int-to-double v2, p1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    .line 220
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%.1fKB"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    int-to-double v2, p1

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    .line 222
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%.1fMB"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCachedInterfaceDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->interfaceNameCache:Ljava/util/Map;

    .line 142
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->interfaceNameCache:Ljava/util/Map;

    .line 143
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->getInterfaceDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->interfaceNameCache:Ljava/util/Map;

    .line 147
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    :goto_0
    const-string p1, "Unknown"

    return-object p1
.end method

.method private getCachedServiceInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x186a0

    mul-int v0, v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->serviceCache:Ljava/util/Map;

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->serviceCache:Ljava/util/Map;

    .line 175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 178
    :cond_1
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->getServiceInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->serviceCache:Ljava/util/Map;

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private getInterfaceDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_7

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, "lan"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "eth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ra"

    .line 157
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "bnep"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "wlan"

    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "mobile"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "rmnet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ccmni"

    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "tun"

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ppp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const-string p1, "VPN"

    return-object p1

    :cond_5
    :goto_1
    const-string p1, "Mobile Data"

    return-object p1

    :cond_6
    :goto_2
    const-string p1, "Wi-Fi"

    return-object p1

    :cond_7
    :goto_3
    const-string p1, "Unknown"

    return-object p1
.end method

.method private getServiceInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "TCP"

    .line 184
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SIP"

    const-string v2, "DNS"

    if-eqz v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "HTTP Alt"

    return-object p1

    :sswitch_1
    return-object v1

    :sswitch_2
    const-string p1, "RDP"

    return-object p1

    :sswitch_3
    const-string p1, "PPTP"

    return-object p1

    :sswitch_4
    const-string p1, "POP3S"

    return-object p1

    :sswitch_5
    const-string p1, "IMAPS"

    return-object p1

    :sswitch_6
    const-string p1, "HTTPS"

    return-object p1

    :sswitch_7
    const-string p1, "IMAP"

    return-object p1

    :sswitch_8
    const-string p1, "POP3"

    return-object p1

    :sswitch_9
    const-string p1, "HTTP"

    return-object p1

    :sswitch_a
    return-object v2

    :sswitch_b
    const-string p1, "SMTP"

    return-object p1

    :sswitch_c
    const-string p1, "Telnet"

    return-object p1

    :sswitch_d
    const-string p1, "SSH"

    return-object p1

    :sswitch_e
    const-string p1, "FTP"

    return-object p1

    :cond_0
    const-string v0, "UDP"

    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x35

    if-eq p1, p2, :cond_7

    const/16 p2, 0x7b

    if-eq p1, p2, :cond_6

    const/16 p2, 0x1f4

    if-eq p1, p2, :cond_5

    const/16 p2, 0x4aa

    if-eq p1, p2, :cond_4

    const/16 p2, 0x13c4

    if-eq p1, p2, :cond_3

    const/16 p2, 0x43

    if-eq p1, p2, :cond_2

    const/16 p2, 0x44

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "DHCP Client"

    return-object p1

    :cond_2
    const-string p1, "DHCP Server"

    return-object p1

    :cond_3
    return-object v1

    :cond_4
    const-string p1, "OpenVPN"

    return-object p1

    :cond_5
    const-string p1, "IPSec"

    return-object p1

    :cond_6
    const-string p1, "NTP"

    return-object p1

    :cond_7
    return-object v2

    :cond_8
    :goto_0
    const-string p1, ""

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_e
        0x16 -> :sswitch_d
        0x17 -> :sswitch_c
        0x19 -> :sswitch_b
        0x35 -> :sswitch_a
        0x50 -> :sswitch_9
        0x6e -> :sswitch_8
        0x8f -> :sswitch_7
        0x1bb -> :sswitch_6
        0x3e1 -> :sswitch_5
        0x3e3 -> :sswitch_4
        0x6bb -> :sswitch_3
        0xd3d -> :sswitch_2
        0x13c4 -> :sswitch_1
        0x1f90 -> :sswitch_0
    .end sparse-switch
.end method

.method public static pretty(Ljava/lang/Long;)Ljava/lang/String;
    .locals 3

    .line 227
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    const-string p0, "dd-MM-yyyy hh:mm:ss"

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setConnectionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_7

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "lan"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "eth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ra"

    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "bnep"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "wlan"

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "wifi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "mobile"

    .line 126
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "rmnet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ccmni"

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pdp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "tun"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ppp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_help:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_4
    :goto_0
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_lan:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    :goto_1
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 128
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_mobiledata:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    :goto_2
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 125
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_wifi:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void

    :cond_7
    :goto_4
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->ic_help:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLogData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 23
    check-cast p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->onBindViewHolder(Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 58
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/log/LogData;

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 60
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldev/ukanth/ufirewall/log/LogData;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->recyclerItemClickListener:Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;

    invoke-virtual {p1, p2, v0}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->bind(Ldev/ukanth/ufirewall/log/LogData;Ldev/ukanth/ufirewall/log/RecyclerItemClickListener;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 63
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->pretty(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 64
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 65
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->getCachedInterfaceDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " via "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_0
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->deniedTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->setConnectionIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 75
    iget-object v1, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataDest:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v1}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataSrc:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 82
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getProto()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 84
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 86
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v0

    invoke-direct {p0, v0, p2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->getCachedServiceInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 91
    :cond_1
    iget-object v0, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataProto:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "Unknown"

    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 94
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_3

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 95
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataHost:Landroid/widget/TextView;

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getHostname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataHost:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 98
    :cond_3
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->dataHost:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object p2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    .line 102
    invoke-virtual {p2}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    .line 103
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    iget-object v2, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->data:Ldev/ukanth/ufirewall/log/LogData;

    invoke-virtual {v2}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result v2

    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->formatBytes(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 105
    :cond_4
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    if-eqz p2, :cond_5

    .line 106
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->packetSize:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :cond_5
    :goto_2
    iget-object p2, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->blockCount:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 111
    iget-object p1, p1, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;->blockCount:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$layout;->logdetail_recycle_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;

    invoke-direct {p2, p1}, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/log/LogDetailRecyclerViewAdapter;->logData:Ljava/util/List;

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
