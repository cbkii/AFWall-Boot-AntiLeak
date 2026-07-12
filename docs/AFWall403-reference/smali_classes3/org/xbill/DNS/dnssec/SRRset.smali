.class Lorg/xbill/DNS/dnssec/SRRset;
.super Lorg/xbill/DNS/RRset;
.source "SRRset.java"


# instance fields
.field private ownerName:Lorg/xbill/DNS/Name;

.field private securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/xbill/DNS/RRset;-><init>()V

    .line 28
    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/RRset;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    .line 49
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Record;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 38
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/dnssec/SRRset;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/RRset;)V

    .line 60
    iget-object v0, p1, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 61
    iget-object p1, p1, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    return-void
.end method


# virtual methods
.method protected canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    instance-of p1, p1, Lorg/xbill/DNS/dnssec/SRRset;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 18
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/dnssec/SRRset;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-virtual {v1, p0}, Lorg/xbill/DNS/dnssec/SRRset;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Lorg/xbill/DNS/RRset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p1

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v3

    if-nez p1, :cond_4

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    iget-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    iget-object v1, v1, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    if-nez p1, :cond_6

    if-eqz v1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_1
    return v2

    :cond_7
    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0
.end method

.method public getSignerName()Lorg/xbill/DNS/Name;
    .locals 2

    .line 86
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->sigs()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 18
    invoke-super {p0}, Lorg/xbill/DNS/RRset;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    const/16 v2, 0x2b

    if-nez v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public setName(Lorg/xbill/DNS/Name;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->ownerName:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SRRset;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-void
.end method
