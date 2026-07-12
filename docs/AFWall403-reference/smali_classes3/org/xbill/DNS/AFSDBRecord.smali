.class public Lorg/xbill/DNS/AFSDBRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "AFSDBRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/Name;)V
    .locals 10

    const/16 v2, 0x12

    const-string v7, "subtype"

    const-string v9, "host"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p6

    .line 22
    invoke-direct/range {v0 .. v9}, Lorg/xbill/DNS/U16NameBase;-><init>(Lorg/xbill/DNS/Name;IIJILjava/lang/String;Lorg/xbill/DNS/Name;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getHost()Lorg/xbill/DNS/Name;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/xbill/DNS/AFSDBRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubtype()I
    .locals 1

    .line 27
    invoke-virtual {p0}, Lorg/xbill/DNS/AFSDBRecord;->getU16Field()I

    move-result v0

    return v0
.end method
