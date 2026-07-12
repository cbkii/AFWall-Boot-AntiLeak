.class public Lorg/xbill/DNS/HTTPSRecord;
.super Lorg/xbill/DNS/SVCBBase;
.source "HTTPSRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/xbill/DNS/SVCBBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "IJI",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x41

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 17
    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/SVCBBase;-><init>(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/Name;Ljava/util/List;)V

    return-void
.end method
