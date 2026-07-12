.class public Lorg/xbill/DNS/SIGRecord;
.super Lorg/xbill/DNS/SIGBase;
.source "SIGRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/xbill/DNS/SIGBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIJLjava/time/Instant;Ljava/time/Instant;ILorg/xbill/DNS/Name;[B)V
    .locals 15

    const/16 v2, 0x18

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 47
    invoke-direct/range {v0 .. v14}, Lorg/xbill/DNS/SIGBase;-><init>(Lorg/xbill/DNS/Name;IIJIIJLjava/time/Instant;Ljava/time/Instant;ILorg/xbill/DNS/Name;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIIJLjava/util/Date;Ljava/util/Date;ILorg/xbill/DNS/Name;[B)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v2, 0x18

    .line 97
    invoke-static/range {p9 .. p9}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v10

    .line 98
    invoke-static/range {p10 .. p10}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v11

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    .line 89
    invoke-direct/range {v0 .. v14}, Lorg/xbill/DNS/SIGBase;-><init>(Lorg/xbill/DNS/Name;IIJIIJLjava/time/Instant;Ljava/time/Instant;ILorg/xbill/DNS/Name;[B)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAlgorithm()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpire()Ljava/time/Instant;
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFootprint()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLabels()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOrigTTL()J
    .locals 2

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getRRsetType()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getRRsetType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSignature()[B
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSigner()Lorg/xbill/DNS/Name;
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeSigned()Ljava/time/Instant;
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTypeCovered()I
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    return v0
.end method
