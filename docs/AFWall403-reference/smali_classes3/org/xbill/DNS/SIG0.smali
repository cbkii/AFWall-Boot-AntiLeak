.class public Lorg/xbill/DNS/SIG0;
.super Ljava/lang/Object;
.source "SIG0.java"


# static fields
.field private static final VALIDITY:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x12c

    .line 23
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/SIG0;->VALIDITY:Ljava/time/Duration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/SIG0;->signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;Ljava/time/Instant;)V

    return-void
.end method

.method public static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Lorg/xbill/DNS/SIGRecord;Ljava/time/Instant;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    const-string v0, "sig0validity"

    .line 56
    invoke-static {v0}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/SIG0;->VALIDITY:Ljava/time/Duration;

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 61
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    .line 64
    :goto_0
    invoke-static {p4, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    .line 66
    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/DNSSEC;->signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;)Lorg/xbill/DNS/SIGRecord;

    move-result-object p1

    const/4 p2, 0x3

    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method

.method public static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/SIG0;->verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;Ljava/time/Instant;)V

    return-void
.end method

.method public static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/KEYRecord;Lorg/xbill/DNS/SIGRecord;Ljava/time/Instant;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 102
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0x18

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    check-cast v1, Lorg/xbill/DNS/SIGRecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    move-object v4, v1

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    .line 111
    invoke-static/range {v2 .. v7}, Lorg/xbill/DNS/DNSSEC;->verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/time/Instant;)V

    return-void
.end method
