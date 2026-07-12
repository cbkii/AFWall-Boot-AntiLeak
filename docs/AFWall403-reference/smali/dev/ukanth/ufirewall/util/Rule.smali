.class public Ldev/ukanth/ufirewall/util/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# instance fields
.field desc:Ljava/lang/String;

.field ipv4Off:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ipv4On:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ipv6Off:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ipv6On:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4Off()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv4Off:Ljava/util/List;

    return-object v0
.end method

.method public getIpv4On()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv4On:Ljava/util/List;

    return-object v0
.end method

.method public getIpv6Off()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv6Off:Ljava/util/List;

    return-object v0
.end method

.method public getIpv6On()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv6On:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/Rule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIpv4Off(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv4Off:Ljava/util/List;

    return-void
.end method

.method public setIpv4On(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv4On:Ljava/util/List;

    return-void
.end method

.method public setIpv6Off(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv6Off:Ljava/util/List;

    return-void
.end method

.method public setIpv6On(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->ipv6On:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/Rule;->name:Ljava/lang/String;

    return-void
.end method
