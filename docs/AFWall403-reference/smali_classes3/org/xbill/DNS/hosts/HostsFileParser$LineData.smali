.class final Lorg/xbill/DNS/hosts/HostsFileParser$LineData;
.super Ljava/lang/Object;
.source "HostsFileParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/hosts/HostsFileParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineData"
.end annotation


# instance fields
.field final address:[B

.field final names:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field final type:I


# direct methods
.method public constructor <init>(I[BLjava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->type:I

    iput-object p2, p0, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->address:[B

    iput-object p3, p0, Lorg/xbill/DNS/hosts/HostsFileParser$LineData;->names:Ljava/lang/Iterable;

    return-void
.end method
