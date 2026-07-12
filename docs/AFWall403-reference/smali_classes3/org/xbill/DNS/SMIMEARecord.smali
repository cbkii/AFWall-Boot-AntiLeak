.class public Lorg/xbill/DNS/SMIMEARecord;
.super Lorg/xbill/DNS/TLSARecord;
.source "SMIMEARecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/xbill/DNS/TLSARecord;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B)V
    .locals 10

    const/16 v2, 0x35

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    .line 34
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/TLSARecord;-><init>(Lorg/xbill/DNS/Name;IIJIII[B)V

    return-void
.end method
