.class public Lorg/xbill/DNS/tools/dig;
.super Ljava/lang/Object;
.source "dig.java"


# static fields
.field static dclass:I = 0x1

.field static name:Lorg/xbill/DNS/Name; = null

.field static type:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static doQuery(Lorg/xbill/DNS/Message;J)V
    .locals 2

    .line 37
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "; dnsjava dig"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 38
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 39
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ";; Query time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 52
    invoke-static {}, Lorg/xbill/DNS/tools/dig;->usage()V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 57
    :try_start_0
    aget-object v3, p0, v2

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    :goto_0
    if-eqz v3, :cond_2

    .line 62
    new-instance v5, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v5, v3}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_1

    .line 64
    :cond_2
    new-instance v3, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v3}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    move-object v0, v3

    :goto_1
    add-int/lit8 v3, v4, 0x1

    .line 67
    aget-object v5, p0, v4

    const-string v6, "-x"

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    add-int/2addr v4, v7

    .line 69
    aget-object v3, p0, v3

    invoke-static {v3}, Lorg/xbill/DNS/ReverseMap;->fromAddress(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v3

    sput-object v3, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    const/16 v3, 0xc

    sput v3, Lorg/xbill/DNS/tools/dig;->type:I

    sput v1, Lorg/xbill/DNS/tools/dig;->dclass:I

    :goto_2
    const/4 v3, 0x0

    goto :goto_4

    .line 73
    :cond_3
    sget-object v6, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v5, v6}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v5

    sput-object v5, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    .line 74
    aget-object v5, p0, v3

    invoke-static {v5}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v5

    sput v5, Lorg/xbill/DNS/tools/dig;->type:I

    if-gez v5, :cond_4

    sput v1, Lorg/xbill/DNS/tools/dig;->type:I

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v4, 0x2

    .line 81
    :goto_3
    aget-object v4, p0, v3

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->value(Ljava/lang/String;)I

    move-result v4

    sput v4, Lorg/xbill/DNS/tools/dig;->dclass:I

    if-gez v4, :cond_5

    sput v1, Lorg/xbill/DNS/tools/dig;->dclass:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move v4, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v3, 0x1

    goto :goto_2

    .line 89
    :goto_4
    :try_start_1
    aget-object v5, p0, v4

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v1, :cond_19

    .line 90
    aget-object v5, p0, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x62

    if-eq v5, v6, :cond_16

    const/16 v6, 0x69

    if-eq v5, v6, :cond_15

    const/16 v6, 0x6b

    if-eq v5, v6, :cond_11

    const/16 v6, 0x74

    if-eq v5, v6, :cond_10

    const/16 v6, 0x64

    if-eq v5, v6, :cond_f

    const/16 v6, 0x65

    if-eq v5, v6, :cond_b

    const/16 v6, 0x70

    if-eq v5, v6, :cond_7

    const/16 v6, 0x71

    if-eq v5, v6, :cond_6

    .line 178
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Invalid option: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v6, p0, v4

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_b

    .line 94
    :cond_7
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_8

    .line 95
    aget-object v5, p0, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 97
    aget-object v5, p0, v4

    .line 99
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_a

    const v6, 0xffff

    if-le v5, v6, :cond_9

    goto :goto_6

    .line 104
    :cond_9
    invoke-virtual {v0, v5}, Lorg/xbill/DNS/SimpleResolver;->setPort(I)V

    goto/16 :goto_b

    .line 101
    :cond_a
    :goto_6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Invalid port"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 156
    :cond_b
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_c

    .line 157
    aget-object v5, p0, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 159
    aget-object v5, p0, v4

    .line 161
    :goto_7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_e

    if-le v5, v1, :cond_d

    goto :goto_8

    .line 166
    :cond_d
    invoke-virtual {v0, v5}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(I)V

    goto/16 :goto_b

    .line 163
    :cond_e
    :goto_8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EDNS level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_f
    new-array v5, v2, [Lorg/xbill/DNS/EDNSOption;

    const v6, 0x8000

    .line 170
    invoke-virtual {v0, v2, v2, v6, v5}, Lorg/xbill/DNS/SimpleResolver;->setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V

    goto :goto_b

    .line 146
    :cond_10
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/SimpleResolver;->setTCP(Z)V

    goto :goto_b

    .line 126
    :cond_11
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_12

    .line 127
    aget-object v5, p0, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 129
    aget-object v5, p0, v4

    :goto_9
    const-string v6, "[:/]"

    const/4 v8, 0x3

    .line 132
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 133
    array-length v6, v5

    if-eq v6, v7, :cond_14

    if-ne v6, v8, :cond_13

    .line 138
    new-instance v6, Lorg/xbill/DNS/TSIG;

    aget-object v8, v5, v2

    aget-object v9, v5, v1

    aget-object v5, v5, v7

    invoke-direct {v6, v8, v9, v5}, Lorg/xbill/DNS/TSIG;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/SimpleResolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    goto :goto_b

    .line 141
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TSIG key specification"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_14
    new-instance v6, Lorg/xbill/DNS/TSIG;

    sget-object v8, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    aget-object v9, v5, v2

    aget-object v5, v5, v1

    invoke-direct {v6, v8, v9, v5}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/SimpleResolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    goto :goto_b

    .line 150
    :cond_15
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/SimpleResolver;->setIgnoreTruncation(Z)V

    goto :goto_b

    .line 109
    :cond_16
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_17

    .line 110
    aget-object v5, p0, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_a

    :cond_17
    add-int/lit8 v4, v4, 0x1

    .line 112
    aget-object v5, p0, v4
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 116
    :goto_a
    :try_start_2
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 121
    :try_start_3
    invoke-virtual {v0, v5}, Lorg/xbill/DNS/SimpleResolver;->setLocalAddress(Ljava/net/InetAddress;)V

    :goto_b
    add-int/2addr v4, v1

    goto/16 :goto_4

    .line 118
    :catch_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Invalid address"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    nop

    move v2, v3

    goto :goto_c

    :catch_2
    nop

    :goto_c
    sget-object p0, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    if-nez p0, :cond_18

    .line 186
    invoke-static {}, Lorg/xbill/DNS/tools/dig;->usage()V

    :cond_18
    move v3, v2

    :cond_19
    if-nez v0, :cond_1a

    .line 190
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v0}, Lorg/xbill/DNS/SimpleResolver;-><init>()V

    :cond_1a
    sget-object p0, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    sget v1, Lorg/xbill/DNS/tools/dig;->type:I

    sget v2, Lorg/xbill/DNS/tools/dig;->dclass:I

    .line 193
    invoke-static {p0, v1, v2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p0

    .line 194
    invoke-static {p0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object p0

    if-eqz v3, :cond_1b

    .line 196
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_1b
    sget v1, Lorg/xbill/DNS/tools/dig;->type:I

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1c

    .line 200
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "; dnsjava dig <> "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " axfr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Lorg/xbill/DNS/tools/dig;->name:Lorg/xbill/DNS/Name;

    .line 201
    invoke-virtual {v0}, Lorg/xbill/DNS/SimpleResolver;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/SimpleResolver;->getTSIGKey()Lorg/xbill/DNS/TSIG;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object p0

    .line 202
    invoke-virtual {v0}, Lorg/xbill/DNS/SimpleResolver;->getTimeout()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(Ljava/time/Duration;)V

    .line 204
    :try_start_4
    new-instance v0, Lorg/xbill/DNS/tools/dig$1;

    invoke-direct {v0}, Lorg/xbill/DNS/tools/dig$1;-><init>()V

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/ZoneTransferIn;->run(Lorg/xbill/DNS/ZoneTransferIn$ZoneTransferHandler;)V
    :try_end_4
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_d

    :catch_3
    move-exception p0

    .line 224
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 228
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/SimpleResolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p0

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 230
    invoke-static {p0, v3, v4}, Lorg/xbill/DNS/tools/dig;->doQuery(Lorg/xbill/DNS/Message;J)V

    :goto_d
    return-void
.end method

.method static usage()V
    .locals 2

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "; dnsjava dig"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 32
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: dig [@server] name [<type>] [<class>] [options]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
