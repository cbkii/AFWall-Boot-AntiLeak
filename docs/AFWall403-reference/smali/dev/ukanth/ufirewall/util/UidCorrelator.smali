.class public Ldev/ukanth/ufirewall/util/UidCorrelator;
.super Ljava/lang/Object;
.source "UidCorrelator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;
    }
.end annotation


# static fields
.field private static final CORRELATION_WINDOW:J = 0x2710L

.field private static final REFRESH_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "UidCorrelator"

.field private static final activeConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static lastRefresh:J

.field private static final recentConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->activeConnections:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->recentConnections:Ljava/util/Map;

    const-wide/16 v0, 0x0

    sput-wide v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->lastRefresh:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static cleanupOldRecentConnections(J)V
    .locals 6

    sget-object v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->recentConnections:Ljava/util/Map;

    .line 289
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-wide v1, Ldev/ukanth/ufirewall/util/UidCorrelator;->lastRefresh:J

    sub-long v1, p0, v1

    const-wide/16 v3, 0x2710

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static correlateUid(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)I
    .locals 16

    .line 69
    invoke-static {}, Ldev/ukanth/ufirewall/util/UidCorrelator;->refreshConnectionCache()V

    sget-object v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->activeConnections:Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const-string v2, "UidCorrelator"

    if-eqz v1, :cond_0

    const-string v1, "No active connections in cache - /proc/net parsing may have failed"

    .line 72
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p2

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;

    if-nez v4, :cond_1

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p0

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;

    goto :goto_0

    :cond_1
    move-object/from16 v14, p0

    move/from16 v3, p3

    :goto_0
    const-string v5, " -> UID "

    if-eqz v4, :cond_2

    .line 85
    iget-wide v6, v4, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->timestamp:J

    move-wide/from16 v10, p5

    invoke-static {v6, v7, v10, v11}, Ldev/ukanth/ufirewall/util/UidCorrelator;->isWithinTimeWindow(JJ)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Found exact match for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, v4, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    return v0

    :cond_2
    move-wide/from16 v10, p5

    :cond_3
    sget-object v4, Ldev/ukanth/ufirewall/util/UidCorrelator;->recentConnections:Ljava/util/Map;

    .line 91
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Found recent connection for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 98
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;

    move-object v4, v15

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    .line 99
    invoke-static/range {v4 .. v11}, Ldev/ukanth/ufirewall/util/UidCorrelator;->isPartialMatch(Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Found partial match -> UID "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v15, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Ldev/ukanth/ufirewall/util/UidCorrelator;->recentConnections:Ljava/util/Map;

    .line 102
    iget v2, v15, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget v0, v15, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    return v0

    :cond_5
    move-wide/from16 v10, p5

    goto :goto_1

    .line 107
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No correlation found for "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x64

    return v0
.end method

.method private static hexToIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    const/16 v2, 0x10

    const-string v3, "."

    const-wide/16 v4, 0xff

    const/16 v6, 0x8

    if-ne v0, v6, :cond_0

    .line 237
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 239
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    and-long v9, v7, v4

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long v9, v7, v6

    and-long/2addr v9, v4

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long v9, v7, v2

    and-long/2addr v9, v4

    invoke-virtual {p0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long v0, v7, v1

    and-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x20

    if-ne v0, v7, :cond_1

    const-string v0, "0000000000000000FFFF0000"

    .line 244
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {p0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    shr-long v0, v7, v1

    and-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long v0, v7, v2

    and-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long v0, v7, v6

    and-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-long v0, v7, v4

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static isPartialMatch(Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Z
    .locals 2

    .line 264
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p1, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p5, 0x0

    if-nez p1, :cond_0

    return p5

    .line 269
    :cond_0
    iget-wide v0, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->timestamp:J

    invoke-static {v0, v1, p6, p7}, Ldev/ukanth/ufirewall/util/UidCorrelator;->isWithinTimeWindow(JJ)Z

    move-result p1

    if-nez p1, :cond_1

    return p5

    .line 274
    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remoteAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->remotePort:I

    if-ne p1, p3, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p4, :cond_4

    .line 278
    iget p0, p0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->localPort:I

    if-ne p0, p4, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    const/4 p5, 0x1

    :cond_5
    return p5
.end method

.method private static isWithinTimeWindow(JJ)Z
    .locals 1

    sub-long/2addr p0, p2

    .line 284
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 p2, 0x2710

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseConnectionLine(Ljava/lang/String;Ljava/lang/String;)Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;
    .locals 16

    const-string v0, ":"

    const-string v1, "UidCorrelator"

    const-string v2, "Failed to parse UID from: "

    const/4 v3, 0x0

    .line 189
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 190
    array-length v5, v4

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    return-object v3

    :cond_0
    const/4 v5, 0x1

    .line 195
    aget-object v6, v4, v5

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 196
    aget-object v8, v6, v7

    invoke-static {v8}, Ldev/ukanth/ufirewall/util/UidCorrelator;->hexToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 197
    aget-object v6, v6, v5

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v13

    const/4 v6, 0x2

    .line 200
    aget-object v6, v4, v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    aget-object v6, v0, v7

    invoke-static {v6}, Ldev/ukanth/ufirewall/util/UidCorrelator;->hexToIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 202
    aget-object v0, v0, v5

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x7

    .line 207
    :try_start_1
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v0, "TCP"

    move-object/from16 v2, p1

    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 216
    aget-object v0, v4, v0

    const-string v4, "01"

    .line 217
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v3

    .line 222
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;

    move-object v9, v0

    move-object/from16 v15, p1

    invoke-direct/range {v9 .. v15}, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-object v0

    .line 209
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v4, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse connection line: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private static parseNetworkConnections(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, ":"

    const-string v1, "UidCorrelator"

    const-string v2, "Failed to read "

    const-string v3, "cat "

    const/4 v4, 0x1

    :try_start_0
    new-array v5, v4, [Ljava/lang/String;

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - exit code: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "\n"

    .line 158
    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ldev/ukanth/ufirewall/InterfaceTracker$$ExternalSyntheticBackport1;->m(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 163
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {v2, p1}, Ldev/ukanth/ufirewall/util/UidCorrelator;->parseConnectionLine(Ljava/lang/String;Ljava/lang/String;)Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 170
    iget v5, v2, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->uid:I

    if-lez v5, :cond_1

    sget-object v5, Ldev/ukanth/ufirewall/util/UidCorrelator;->activeConnections:Ljava/util/Map;

    .line 171
    invoke-virtual {v2}, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->getConnectionKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->localAddress:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Ldev/ukanth/ufirewall/util/UidCorrelator$ConnectionInfo;->localPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method private static refreshConnectionCache()V
    .locals 11

    const-string v0, "UDP"

    const-string v1, "TCP"

    const-string v2, "UidCorrelator"

    const-string v3, "Refreshed connection cache: "

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Ldev/ukanth/ufirewall/util/UidCorrelator;->lastRefresh:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x1388

    cmp-long v10, v6, v8

    if-gez v10, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v6, Ldev/ukanth/ufirewall/util/UidCorrelator;->activeConnections:Ljava/util/Map;

    .line 122
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 123
    invoke-static {v4, v5}, Ldev/ukanth/ufirewall/util/UidCorrelator;->cleanupOldRecentConnections(J)V

    const-string v7, "/proc/net/tcp"

    .line 126
    invoke-static {v7, v1}, Ldev/ukanth/ufirewall/util/UidCorrelator;->parseNetworkConnections(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "/proc/net/tcp6"

    .line 127
    invoke-static {v7, v1}, Ldev/ukanth/ufirewall/util/UidCorrelator;->parseNetworkConnections(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/proc/net/udp"

    .line 130
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/UidCorrelator;->parseNetworkConnections(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/proc/net/udp6"

    .line 131
    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/util/UidCorrelator;->parseNetworkConnections(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v4, Ldev/ukanth/ufirewall/util/UidCorrelator;->lastRefresh:J

    .line 134
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Connection cache refresh completed but no connections found - check root access"

    .line 135
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " active connections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error refreshing connection cache"

    .line 141
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
