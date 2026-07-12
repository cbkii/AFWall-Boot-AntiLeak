.class public Lorg/xbill/DNS/SPFRecord;
.super Lorg/xbill/DNS/TXTBase;
.source "SPFRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/TXTBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/lang/String;)V
    .locals 7

    const/16 v2, 0x63

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 35
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/TXTBase;-><init>(Lorg/xbill/DNS/Name;IIJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "IJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0x63

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 25
    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/TXTBase;-><init>(Lorg/xbill/DNS/Name;IIJLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getStrings()Ljava/util/List;
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/xbill/DNS/TXTBase;->getStrings()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStringsAsByteArrays()Ljava/util/List;
    .locals 1

    .line 15
    invoke-super {p0}, Lorg/xbill/DNS/TXTBase;->getStringsAsByteArrays()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
