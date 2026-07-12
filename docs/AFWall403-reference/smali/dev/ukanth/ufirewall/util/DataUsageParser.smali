.class public Ldev/ukanth/ufirewall/util/DataUsageParser;
.super Ljava/lang/Object;
.source "DataUsageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;
    }
.end annotation


# static fields
.field private static final CACHE_VALIDITY_MS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "DataUsageParser"

.field private static final dataUsageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static lastCacheUpdate:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->lastCacheUpdate:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCache()V
    .locals 2

    sget-object v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    .line 244
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v0, 0x0

    sput-wide v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->lastCacheUpdate:J

    return-void
.end method

.method public static formatDataUsage(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-string p0, "0 B"

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    long-to-double p0, p0

    .line 256
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const/16 v2, 0x400

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-int v0, v0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    const-string v5, "KMGTPE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    int-to-double v5, v0

    .line 258
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 p0, 0x1

    aput-object v1, v4, p0

    const-string p0, "%.1f %sB"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWifiMobileUsage(Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;)Ljava/lang/String;
    .locals 6

    .line 265
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalWifiBytes()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalMobileBytes()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p0, "No data usage"

    return-object p0

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalWifiBytes()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_1

    const-string v1, "\ud83d\udcf6 "

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalWifiBytes()J

    move-result-wide v4

    invoke-static {v4, v5}, Ldev/ukanth/ufirewall/util/DataUsageParser;->formatDataUsage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalMobileBytes()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "\ud83d\udcf1 "

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->getTotalMobileBytes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/util/DataUsageParser;->formatDataUsage(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataUsageForUID(I)Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;
    .locals 2

    .line 52
    invoke-static {}, Ldev/ukanth/ufirewall/util/DataUsageParser;->isCacheValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    return-object p0

    .line 57
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/DataUsageParser;->isCacheValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {}, Ldev/ukanth/ufirewall/util/DataUsageParser;->refreshDataUsageCache()V

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    if-eqz p0, :cond_2

    goto :goto_0

    .line 62
    :cond_2
    new-instance p0, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;-><init>()V

    :goto_0
    return-object p0
.end method

.method private static isCacheValid()Z
    .locals 5

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ldev/ukanth/ufirewall/util/DataUsageParser;->lastCacheUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMobileInterface(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "rmnet"

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ccmni"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pdp"

    .line 192
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ppp"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mobile"

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "radio"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rmnet\\d+"

    .line 196
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rmnet_data\\d+"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isWiFiInterface(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "wlan"

    .line 178
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wifi"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "wl0"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eth0"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseQtaguidData(Ljava/lang/String;)V
    .locals 13

    const-string v0, "\n"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 120
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "DataUsageParser"

    if-ge v1, v0, :cond_7

    aget-object v3, p0, v1

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "idx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    .line 125
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 126
    array-length v5, v4

    const/16 v6, 0x8

    if-ge v5, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v5, 0x1

    .line 132
    :try_start_0
    aget-object v5, v4, v5

    const/4 v6, 0x3

    .line 133
    aget-object v6, v4, v6

    const/4 v7, 0x5

    .line 134
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x7

    .line 135
    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 138
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    const/16 v4, 0x20

    shr-long/2addr v11, v4

    long-to-int v4, v11

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v6, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    .line 146
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    if-nez v11, :cond_3

    .line 148
    new-instance v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    invoke-direct {v11}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;-><init>()V

    .line 149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3
    invoke-static {v5}, Ldev/ukanth/ufirewall/util/DataUsageParser;->isWiFiInterface(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiRxBytes:J

    add-long/2addr v4, v7

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiRxBytes:J

    .line 155
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiTxBytes:J

    add-long/2addr v4, v9

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->wifiTxBytes:J

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {v5}, Ldev/ukanth/ufirewall/util/DataUsageParser;->isMobileInterface(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 157
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileRxBytes:J

    add-long/2addr v4, v7

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileRxBytes:J

    .line 158
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileTxBytes:J

    add-long/2addr v4, v9

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->mobileTxBytes:J

    .line 162
    :cond_5
    :goto_1
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalRxBytes:J

    add-long/2addr v4, v7

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalRxBytes:J

    .line 163
    iget-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalTxBytes:J

    add-long/2addr v4, v9

    iput-wide v4, v11, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalTxBytes:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 166
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 170
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Parsed data usage for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " UIDs"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static refreshDataUsageCache()V
    .locals 10

    const-string v0, "DataUsageParser"

    :try_start_0
    sget-object v1, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    .line 77
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "/proc/net/xt_qtaguid/stats"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "/proc/net/xt_qtaguid/ctrl"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "/proc/net/xt_qtaguid"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "/sys/kernel/debug/xt_qtaguid/stats"

    const/4 v6, 0x3

    aput-object v3, v2, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 88
    aget-object v6, v2, v3

    new-array v7, v5, [Ljava/lang/String;

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test -f "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " && cat "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v7}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v7

    invoke-virtual {v7}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v7

    .line 90
    invoke-virtual {v7}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v1, "\n"

    .line 91
    invoke-virtual {v7}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found xt_qtaguid data at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 98
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/DataUsageParser;->parseQtaguidData(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "xt_qtaguid not available, using fallback method"

    .line 101
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {}, Ldev/ukanth/ufirewall/util/DataUsageParser;->useFallbackMethod()V

    .line 105
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Ldev/ukanth/ufirewall/util/DataUsageParser;->lastCacheUpdate:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "Error refreshing data usage cache"

    .line 108
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 109
    invoke-static {}, Ldev/ukanth/ufirewall/util/DataUsageParser;->useFallbackMethod()V

    :goto_3
    return-void
.end method

.method private static useFallbackMethod()V
    .locals 10

    const-string v0, "cat "

    const-string v1, "find /proc/uid_stat -name \'[0-9]*\' -type d 2>/dev/null"

    .line 207
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v1

    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v2

    const-string v3, "DataUsageParser"

    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v1}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v4, 0x2f

    .line 212
    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v6, v5, [Ljava/lang/String;

    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/tcp_rcv 2>/dev/null || echo 0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v6

    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/String;

    .line 217
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/tcp_snd 2>/dev/null || echo 0"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v5}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v5

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v5

    .line 219
    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 220
    invoke-virtual {v6}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 221
    invoke-virtual {v5}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 223
    new-instance v5, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;

    invoke-direct {v5}, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;-><init>()V

    .line 224
    iput-wide v6, v5, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalRxBytes:J

    .line 225
    iput-wide v8, v5, Ldev/ukanth/ufirewall/util/DataUsageParser$DataUsageStats;->totalTxBytes:J

    sget-object v6, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    .line 228
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 232
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to parse UID directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fallback method parsed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ldev/ukanth/ufirewall/util/DataUsageParser;->dataUsageCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " UIDs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
