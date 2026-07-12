.class public Lorg/xbill/DNS/tools/jnamed;
.super Ljava/lang/Object;
.source "jnamed.java"


# static fields
.field static final FLAG_DNSSECOK:I = 0x1

.field static final FLAG_SIGONLY:I = 0x2


# instance fields
.field TSIGs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/TSIG;",
            ">;"
        }
    .end annotation
.end field

.field caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/xbill/DNS/Cache;",
            ">;"
        }
    .end annotation
.end field

.field znames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Zone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 75
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 76
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :try_start_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/tools/jnamed;->caches:Ljava/util/Map;

    .line 84
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    .line 85
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/tools/jnamed;->TSIGs:Ljava/util/Map;

    .line 88
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 89
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    .line 95
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p1, "cache"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_2

    :sswitch_1
    const-string p1, "port"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x4

    goto :goto_2

    :sswitch_2
    const-string p1, "key"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    goto :goto_2

    :sswitch_3
    const-string v5, "primary"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :sswitch_4
    const-string p1, "secondary"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :sswitch_5
    const-string p1, "address"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, -0x1

    :goto_2
    if-eqz p1, :cond_a

    if-eq p1, v10, :cond_9

    if-eq p1, v9, :cond_8

    if-eq p1, v8, :cond_6

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_4

    .line 129
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown keyword: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    :cond_5
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 116
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v4, v3}, Lorg/xbill/DNS/tools/jnamed;->addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v3, "hmac-md5"

    .line 118
    invoke-virtual {p0, v3, p1, v4}, Lorg/xbill/DNS/tools/jnamed;->addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :cond_8
    new-instance p1, Lorg/xbill/DNS/Cache;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Lorg/xbill/DNS/Cache;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/xbill/DNS/tools/jnamed;->caches:Ljava/util/Map;

    .line 110
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 106
    :cond_9
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/xbill/DNS/tools/jnamed;->addSecondaryZone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_a
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lorg/xbill/DNS/tools/jnamed;->addPrimaryZone(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p1, 0x35

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_c
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "0.0.0.0"

    .line 139
    invoke-static {p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 143
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 145
    invoke-virtual {p0, v1, v4}, Lorg/xbill/DNS/tools/jnamed;->addUDP(Ljava/net/InetAddress;I)V

    .line 146
    invoke-virtual {p0, v1, v4}, Lorg/xbill/DNS/tools/jnamed;->addTCP(Ljava/net/InetAddress;I)V

    .line 147
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jnamed: listening on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v4}, Lorg/xbill/DNS/tools/jnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 150
    :cond_f
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "jnamed: running"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 153
    throw p1

    .line 78
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot open "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_5
        -0x30bb8e8c -> :sswitch_4
        -0x12c2f1fe -> :sswitch_3
        0x19e5f -> :sswitch_2
        0x349881 -> :sswitch_1
        0x5a0af82 -> :sswitch_0
    .end sparse-switch
.end method

.method private addAdditional(Lorg/xbill/DNS/Message;I)V
    .locals 1

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/tools/jnamed;->addAdditional2(Lorg/xbill/DNS/Message;II)V

    const/4 v0, 0x2

    .line 281
    invoke-direct {p0, p1, v0, p2}, Lorg/xbill/DNS/tools/jnamed;->addAdditional2(Lorg/xbill/DNS/Message;II)V

    return-void
.end method

.method private addAdditional2(Lorg/xbill/DNS/Message;II)V
    .locals 1

    .line 271
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 272
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1, v0, p3}, Lorg/xbill/DNS/tools/jnamed;->addGlue(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 252
    invoke-virtual {p2, p3, v1, v0}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object p2

    .line 253
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object p2

    .line 257
    invoke-virtual {p2}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/xbill/DNS/Record;

    .line 258
    invoke-virtual {p1, p3, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addGlue(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;I)V
    .locals 7

    const/4 v0, 0x1

    .line 263
    invoke-virtual {p0, p2, v0, v0, v0}, Lorg/xbill/DNS/tools/jnamed;->findExactMatch(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v6, p3

    .line 267
    invoke-virtual/range {v1 .. v6}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    return-void
.end method

.method private addNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;I)V
    .locals 6

    .line 247
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    return-void
.end method

.method private addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V
    .locals 1

    .line 243
    invoke-virtual {p2}, Lorg/xbill/DNS/Zone;->getSOA()Lorg/xbill/DNS/SOARecord;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method

.method private static addrport(Ljava/net/InetAddress;I)Ljava/lang/String;
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .line 609
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 610
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "usage: jnamed [conf]"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 611
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 616
    :cond_0
    :try_start_0
    array-length v0, p0

    if-ne v0, v2, :cond_1

    .line 617
    aget-object p0, p0, v1

    goto :goto_0

    :cond_1
    const-string p0, "jnamed.conf"

    .line 621
    :goto_0
    new-instance v0, Lorg/xbill/DNS/tools/jnamed;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/tools/jnamed;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 623
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public TCPclient(Ljava/net/Socket;)V
    .locals 4

    .line 515
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 521
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 522
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    .line 523
    new-array v2, v2, [B

    .line 524
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 530
    invoke-virtual {p0, v1, v2, p1}, Lorg/xbill/DNS/tools/jnamed;->generateReply(Lorg/xbill/DNS/Message;[BLjava/net/Socket;)[B

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 540
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    return-void

    .line 535
    :catch_0
    :try_start_4
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/tools/jnamed;->formerrMessage([B)[B

    move-result-object v1

    .line 537
    :cond_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 538
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 539
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_3

    .line 540
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 515
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    .line 541
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TCPclient("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    invoke-static {v3, p1}, Lorg/xbill/DNS/tools/jnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 541
    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v0, p3

    move/from16 v9, p4

    move/from16 v10, p5

    const/4 v11, 0x0

    const/4 v12, 0x6

    if-le v10, v12, :cond_0

    return v11

    :cond_0
    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v14, p6

    move v13, v0

    goto :goto_1

    :cond_2
    :goto_0
    or-int/lit8 v0, p6, 0x2

    const/16 v1, 0xff

    move v14, v0

    const/16 v13, 0xff

    .line 297
    :goto_1
    invoke-virtual {v7, v8}, Lorg/xbill/DNS/tools/jnamed;->findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v15

    const/4 v0, 0x3

    if-eqz v15, :cond_3

    .line 299
    invoke-virtual {v15, v8, v13}, Lorg/xbill/DNS/Zone;->findRecords(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/SetResponse;

    move-result-object v1

    goto :goto_2

    .line 301
    :cond_3
    invoke-virtual {v7, v9}, Lorg/xbill/DNS/tools/jnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v1

    .line 302
    invoke-virtual {v1, v8, v13, v0}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v1

    .line 305
    :goto_2
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-virtual {v7, v9}, Lorg/xbill/DNS/tools/jnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v2

    invoke-direct {v7, v6, v2, v8}, Lorg/xbill/DNS/tools/jnamed;->addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V

    .line 308
    :cond_4
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v2

    const/4 v5, 0x5

    if-eqz v2, :cond_6

    .line 309
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/Header;->setRcode(I)V

    if-eqz v15, :cond_5

    .line 311
    invoke-direct {v7, v6, v15}, Lorg/xbill/DNS/tools/jnamed;->addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V

    if-nez v10, :cond_5

    .line 313
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    :cond_5
    const/4 v11, 0x3

    goto/16 :goto_4

    .line 317
    :cond_6
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v15, :cond_f

    .line 319
    invoke-direct {v7, v6, v15}, Lorg/xbill/DNS/tools/jnamed;->addSOA(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;)V

    if-nez v10, :cond_f

    .line 321
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/xbill/DNS/Header;->setFlag(I)V

    goto/16 :goto_4

    .line 324
    :cond_7
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 325
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->getNS()Lorg/xbill/DNS/RRset;

    move-result-object v3

    .line 326
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    goto/16 :goto_4

    .line 327
    :cond_8
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 328
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object v11

    .line 329
    new-instance v3, Lorg/xbill/DNS/RRset;

    invoke-direct {v3, v11}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    const/4 v8, 0x5

    move v5, v14

    .line 330
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    if-eqz v15, :cond_9

    if-nez v10, :cond_9

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 334
    :cond_9
    invoke-virtual {v11}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    add-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v3, v13

    move/from16 v4, p4

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/tools/jnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v11

    goto/16 :goto_4

    .line 335
    :cond_a
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 336
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object v11

    .line 337
    new-instance v3, Lorg/xbill/DNS/RRset;

    invoke-direct {v3, v11}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    const/4 v12, 0x5

    move v5, v14

    .line 338
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    .line 341
    :try_start_0
    invoke-virtual {v8, v11}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v11
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    new-instance v5, Lorg/xbill/DNS/CNAMERecord;

    const-wide/16 v3, 0x0

    move-object v0, v5

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object v12, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    .line 347
    new-instance v3, Lorg/xbill/DNS/RRset;

    invoke-direct {v3, v12}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move v5, v14

    .line 348
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    if-eqz v15, :cond_b

    if-nez v10, :cond_b

    .line 350
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    :cond_b
    add-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move v3, v13

    move/from16 v4, p4

    move v6, v14

    .line 352
    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/tools/jnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v11

    goto :goto_4

    :catch_0
    const/4 v0, 0x6

    return v0

    .line 353
    :cond_c
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 354
    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponse;->answers()Ljava/util/List;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/xbill/DNS/RRset;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move v5, v14

    .line 356
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    goto :goto_3

    :cond_d
    if-eqz v15, :cond_e

    .line 359
    invoke-direct {v7, v6, v15, v14}, Lorg/xbill/DNS/tools/jnamed;->addNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Zone;I)V

    if-nez v10, :cond_f

    .line 361
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    goto :goto_4

    .line 364
    :cond_e
    invoke-virtual {v7, v9}, Lorg/xbill/DNS/tools/jnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object v0

    invoke-direct {v7, v6, v0, v8}, Lorg/xbill/DNS/tools/jnamed;->addCacheNS(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;Lorg/xbill/DNS/Name;)V

    :cond_f
    :goto_4
    return v11
.end method

.method public addPrimaryZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 159
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 161
    :goto_0
    new-instance v0, Lorg/xbill/DNS/Zone;

    invoke-direct {v0, p1, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    .line 162
    invoke-virtual {v0}, Lorg/xbill/DNS/Zone;->getOrigin()Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p4, :cond_1

    .line 220
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-virtual {p2, p1, v1, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_3

    .line 225
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->rrs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 226
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 229
    :cond_2
    invoke-virtual {p2, v1, p4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_1

    :cond_3
    and-int/lit8 p5, p5, 0x3

    if-eqz p5, :cond_5

    .line 233
    invoke-virtual {p3}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/xbill/DNS/Record;

    .line 234
    invoke-virtual {p5}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v0

    if-nez v0, :cond_4

    .line 235
    invoke-virtual {p5, p1}, Lorg/xbill/DNS/Record;->withName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Record;

    move-result-object p5

    .line 237
    :cond_4
    invoke-virtual {p2, p5, p4}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public addSecondaryZone(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xbill/DNS/ZoneTransferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 168
    new-instance v0, Lorg/xbill/DNS/Zone;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lorg/xbill/DNS/Zone;-><init>(Lorg/xbill/DNS/Name;ILjava/lang/String;)V

    iget-object p2, p0, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    .line 169
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTCP(Ljava/net/InetAddress;I)V
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda1;-><init>(Lorg/xbill/DNS/tools/jnamed;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public addTSIG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p2, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/tools/jnamed;->TSIGs:Ljava/util/Map;

    .line 174
    new-instance v2, Lorg/xbill/DNS/TSIG;

    invoke-direct {v2, p1, p2, p3}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUDP(Ljava/net/InetAddress;I)V
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/tools/jnamed;Ljava/net/InetAddress;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 605
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B
    .locals 4

    .line 488
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    .line 489
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Message;->setHeader(Lorg/xbill/DNS/Header;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 491
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->removeAllRecords(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 494
    invoke-virtual {v0, p3, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 496
    :cond_1
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    .line 497
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object p1

    return-object p1
.end method

.method doAXFR(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    move-object/from16 v1, p1

    .line 371
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Zone;

    const/4 v8, 0x5

    if-nez v0, :cond_0

    move-object/from16 v1, p2

    .line 374
    invoke-virtual {v6, v1, v8}, Lorg/xbill/DNS/tools/jnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v1, p2

    .line 378
    :try_start_0
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v9, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 379
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v10

    .line 380
    invoke-virtual {v0}, Lorg/xbill/DNS/Zone;->AXFR()Ljava/util/Iterator;

    move-result-object v11

    const/4 v0, 0x1

    move-object/from16 v12, p4

    const/4 v13, 0x1

    .line 381
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 382
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 383
    new-instance v14, Lorg/xbill/DNS/Message;

    invoke-direct {v14, v10}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 384
    invoke-virtual {v14}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v15, 0x0

    .line 385
    invoke-virtual {v0, v15}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 386
    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 387
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->addRRset(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/RRset;II)V

    if-eqz v7, :cond_1

    .line 389
    invoke-virtual {v7, v14, v12, v13}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;Z)V

    .line 390
    invoke-virtual {v14}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    move-object v12, v0

    .line 393
    :cond_1
    invoke-virtual {v14}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v0

    .line 394
    array-length v1, v0

    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 395
    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x0

    goto :goto_0

    .line 398
    :catch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AXFR failed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    :cond_2
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public errorMessage(Lorg/xbill/DNS/Message;I)[B
    .locals 1

    .line 511
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lorg/xbill/DNS/tools/jnamed;->buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B

    move-result-object p1

    return-object p1
.end method

.method public findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    .line 183
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Zone;

    if-eqz v0, :cond_0

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 189
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, p1, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    iget-object v3, p0, Lorg/xbill/DNS/tools/jnamed;->znames:Ljava/util/Map;

    .line 190
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Zone;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findExactMatch(Lorg/xbill/DNS/Name;IIZ)Lorg/xbill/DNS/RRset;
    .locals 1

    .line 199
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/jnamed;->findBestZone(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Zone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1, p2}, Lorg/xbill/DNS/Zone;->findExactMatch(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object p1

    return-object p1

    .line 204
    :cond_0
    invoke-virtual {p0, p3}, Lorg/xbill/DNS/tools/jnamed;->getCache(I)Lorg/xbill/DNS/Cache;

    move-result-object p3

    if-eqz p4, :cond_1

    .line 206
    invoke-virtual {p3, p1, p2}, Lorg/xbill/DNS/Cache;->findAnyRecords(Lorg/xbill/DNS/Name;I)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p3, p1, p2}, Lorg/xbill/DNS/Cache;->findRecords(Lorg/xbill/DNS/Name;I)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const/4 p2, 0x0

    .line 213
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/RRset;

    return-object p1
.end method

.method public formerrMessage([B)[B
    .locals 2

    const/4 v0, 0x0

    .line 503
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/Header;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Header;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 507
    invoke-virtual {p0, v1, p1, v0}, Lorg/xbill/DNS/tools/jnamed;->buildErrorMessage(Lorg/xbill/DNS/Header;ILorg/xbill/DNS/Record;)[B

    move-result-object p1

    return-object p1

    :catch_0
    return-object v0
.end method

.method generateReply(Lorg/xbill/DNS/Message;[BLjava/net/Socket;)[B
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 418
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    const/4 v9, 0x0

    .line 419
    invoke-virtual {v1, v9}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 422
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_1

    .line 423
    invoke-virtual {v7, v8, v10}, Lorg/xbill/DNS/tools/jnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    .line 425
    :cond_1
    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 426
    invoke-virtual {v7, v8, v2}, Lorg/xbill/DNS/tools/jnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    .line 429
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 431
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v4, v7, Lorg/xbill/DNS/tools/jnamed;->TSIGs:Ljava/util/Map;

    .line 434
    invoke-virtual {v11}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/TSIG;

    if-eqz v4, :cond_4

    .line 435
    invoke-virtual {v4, v8, v0, v3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move-object v12, v4

    goto :goto_1

    .line 436
    :cond_4
    :goto_0
    invoke-virtual {v7, v0}, Lorg/xbill/DNS/tools/jnamed;->formerrMessage([B)[B

    move-result-object v0

    return-object v0

    :cond_5
    move-object v12, v3

    .line 440
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v13

    if-eqz p3, :cond_6

    const v0, 0xffff

    const v14, 0xffff

    goto :goto_2

    :cond_6
    const/16 v0, 0x200

    if-eqz v13, :cond_7

    .line 444
    invoke-virtual {v13}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v14, v0

    goto :goto_2

    :cond_7
    const/16 v14, 0x200

    :goto_2
    const v15, 0x8000

    if-eqz v13, :cond_8

    .line 449
    invoke-virtual {v13}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v0

    and-int/2addr v0, v15

    if-eqz v0, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    .line 453
    :goto_3
    new-instance v6, Lorg/xbill/DNS/Message;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    invoke-direct {v6, v0}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 454
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    invoke-virtual {v6}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 458
    :cond_9
    invoke-virtual {v6, v1, v9}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 460
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 461
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    .line 462
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v16

    const/16 v0, 0xfc

    if-ne v4, v0, :cond_a

    if-eqz p3, :cond_a

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p3

    .line 464
    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/tools/jnamed;->doAXFR(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIG;Lorg/xbill/DNS/TSIGRecord;Ljava/net/Socket;)[B

    move-result-object v0

    return-object v0

    .line 466
    :cond_a
    invoke-static {v4}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xff

    if-eq v4, v0, :cond_b

    .line 467
    invoke-virtual {v7, v8, v2}, Lorg/xbill/DNS/tools/jnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    :cond_b
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v3

    move v3, v4

    move/from16 v4, v16

    move/from16 p2, v5

    move/from16 v5, v17

    move-object v15, v6

    move/from16 v6, p2

    .line 470
    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/tools/jnamed;->addAnswer(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Name;IIII)B

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    if-eq v0, v1, :cond_c

    .line 472
    invoke-virtual {v7, v8, v0}, Lorg/xbill/DNS/tools/jnamed;->errorMessage(Lorg/xbill/DNS/Message;I)[B

    move-result-object v0

    return-object v0

    :cond_c
    move/from16 v2, p2

    .line 475
    invoke-direct {v7, v15, v2}, Lorg/xbill/DNS/tools/jnamed;->addAdditional(Lorg/xbill/DNS/Message;I)V

    if-eqz v13, :cond_e

    if-ne v2, v10, :cond_d

    const v2, 0x8000

    goto :goto_4

    :cond_d
    const/4 v2, 0x0

    .line 479
    :goto_4
    new-instance v3, Lorg/xbill/DNS/OPTRecord;

    const/16 v4, 0x1000

    invoke-direct {v3, v4, v0, v9, v2}, Lorg/xbill/DNS/OPTRecord;-><init>(IIII)V

    .line 480
    invoke-virtual {v15, v3, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 483
    :cond_e
    invoke-virtual {v15, v12, v9, v11}, Lorg/xbill/DNS/Message;->setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V

    .line 484
    invoke-virtual {v15, v14}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCache(I)Lorg/xbill/DNS/Cache;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/tools/jnamed;->caches:Ljava/util/Map;

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/Cache;

    return-object p1
.end method

.method synthetic lambda$addTCP$1$org-xbill-DNS-tools-jnamed(Ljava/net/InetAddress;I)V
    .locals 0

    .line 599
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/tools/jnamed;->serveTCP(Ljava/net/InetAddress;I)V

    return-void
.end method

.method synthetic lambda$addUDP$2$org-xbill-DNS-tools-jnamed(Ljava/net/InetAddress;I)V
    .locals 0

    .line 604
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/tools/jnamed;->serveUDP(Ljava/net/InetAddress;I)V

    return-void
.end method

.method synthetic lambda$serveTCP$0$org-xbill-DNS-tools-jnamed(Ljava/net/Socket;)V
    .locals 0

    .line 551
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/tools/jnamed;->TCPclient(Ljava/net/Socket;)V

    return-void
.end method

.method public serveTCP(Ljava/net/InetAddress;I)V
    .locals 4

    .line 547
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/16 v1, 0x80

    invoke-direct {v0, p2, v1, p1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 551
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lorg/xbill/DNS/tools/jnamed$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/tools/jnamed;Ljava/net/Socket;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 552
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 547
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    .line 555
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serveTCP("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/xbill/DNS/tools/jnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public serveUDP(Ljava/net/InetAddress;I)V
    .locals 10

    .line 560
    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0, p2, p1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v1, 0x200

    :try_start_1
    new-array v2, v1, [B

    .line 563
    new-instance v3, Ljava/net/DatagramPacket;

    invoke-direct {v3, v2, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 566
    :catch_0
    :goto_0
    invoke-virtual {v3, v1}, Ljava/net/DatagramPacket;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 575
    :try_start_3
    new-instance v6, Lorg/xbill/DNS/Message;

    invoke-direct {v6, v2}, Lorg/xbill/DNS/Message;-><init>([B)V

    .line 576
    invoke-virtual {p0, v6, v2, v4}, Lorg/xbill/DNS/tools/jnamed;->generateReply(Lorg/xbill/DNS/Message;[BLjava/net/Socket;)[B

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_0

    goto :goto_0

    .line 581
    :catch_1
    :try_start_4
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/tools/jnamed;->formerrMessage([B)[B

    move-result-object v6

    :cond_0
    if-nez v5, :cond_1

    .line 584
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v7, v6

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    goto :goto_1

    .line 586
    :cond_1
    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setData([B)V

    .line 587
    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setLength(I)V

    .line 588
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 589
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 591
    :goto_1
    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 560
    :try_start_5
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    .line 594
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serveUDP("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lorg/xbill/DNS/tools/jnamed;->addrport(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
