.class public Lorg/xbill/DNS/tools/xfrin;
.super Ljava/lang/Object;
.source "xfrin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x35

    const/4 v3, 0x0

    move-object v10, v0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x35

    .line 35
    :goto_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_9

    .line 36
    aget-object v4, p0, v2

    const-string v6, "-i"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 37
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_8

    const-string v4, "invalid serial number"

    .line 39
    invoke-static {v4}, Lorg/xbill/DNS/tools/xfrin;->usage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 41
    :cond_0
    aget-object v4, p0, v2

    const-string v6, "-k"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 42
    aget-object v4, p0, v2

    const/16 v6, 0x2f

    .line 43
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1

    const-string v8, "invalid key"

    .line 45
    invoke-static {v8}, Lorg/xbill/DNS/tools/xfrin;->usage(Ljava/lang/String;)V

    .line 47
    :cond_1
    new-instance v8, Lorg/xbill/DNS/TSIG;

    sget-object v10, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v10, v11, v4}, Lorg/xbill/DNS/TSIG;-><init>(Lorg/xbill/DNS/Name;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v8

    goto :goto_1

    .line 48
    :cond_2
    aget-object v4, p0, v2

    const-string v6, "-s"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 49
    aget-object v0, p0, v2

    goto :goto_1

    .line 50
    :cond_3
    aget-object v4, p0, v2

    const-string v6, "-p"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    .line 51
    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    const v6, 0xffff

    if-le v4, v6, :cond_5

    :cond_4
    const-string v6, "invalid port"

    .line 53
    invoke-static {v6}, Lorg/xbill/DNS/tools/xfrin;->usage(Ljava/lang/String;)V

    :cond_5
    move v9, v4

    goto :goto_1

    .line 55
    :cond_6
    aget-object v4, p0, v2

    const-string v6, "-f"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v7, 0x1

    goto :goto_1

    .line 57
    :cond_7
    aget-object v4, p0, v2

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "invalid option"

    .line 58
    invoke-static {v4}, Lorg/xbill/DNS/tools/xfrin;->usage(Ljava/lang/String;)V

    :cond_8
    :goto_1
    add-int/2addr v2, v5

    goto/16 :goto_0

    .line 64
    :cond_9
    array-length v4, p0

    if-lt v2, v4, :cond_a

    const-string v4, "no zone name specified"

    .line 65
    invoke-static {v4}, Lorg/xbill/DNS/tools/xfrin;->usage(Ljava/lang/String;)V

    .line 67
    :cond_a
    aget-object p0, p0, v2

    invoke-static {p0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v4

    if-nez v0, :cond_c

    .line 70
    new-instance p0, Lorg/xbill/DNS/Lookup;

    const/4 v0, 0x2

    invoke-direct {p0, v4, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 71
    invoke-virtual {p0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v0

    if-nez v0, :cond_b

    .line 73
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "failed to look up NS record: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 76
    :cond_b
    aget-object p0, v0, v3

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToString()Ljava/lang/String;

    move-result-object p0

    .line 77
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending to server \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v8, p0

    goto :goto_2

    :cond_c
    move-object v8, v0

    :goto_2
    if-ltz v1, :cond_d

    int-to-long v5, v1

    .line 81
    invoke-static/range {v4 .. v10}, Lorg/xbill/DNS/ZoneTransferIn;->newIXFR(Lorg/xbill/DNS/Name;JZLjava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object p0

    goto :goto_3

    .line 83
    :cond_d
    invoke-static {v4, v8, v9, v10}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/lang/String;ILorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object p0

    .line 86
    :goto_3
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->run()V

    .line 87
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->isAXFR()Z

    move-result v0

    if-eqz v0, :cond_f

    if-ltz v1, :cond_e

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AXFR-like IXFR response"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 91
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AXFR response"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :goto_4
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 94
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_5

    .line 96
    :cond_f
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->isIXFR()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "IXFR response"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->getIXFR()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;

    .line 99
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "delta from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->start:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->end:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deletes"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 101
    iget-object v1, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->deletes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 103
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 105
    :cond_11
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "adds"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    iget-object v0, v0, Lorg/xbill/DNS/ZoneTransferIn$Delta;->adds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 108
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_7

    .line 111
    :cond_12
    invoke-virtual {p0}, Lorg/xbill/DNS/ZoneTransferIn;->isCurrent()Z

    move-result p0

    if-eqz p0, :cond_13

    .line 112
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "up to date"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private static usage(Ljava/lang/String;)V
    .locals 3

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "usage: xfrin [-i serial] [-k keyname/secret] [-s server] [-p port] [-f] zone"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 22
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
