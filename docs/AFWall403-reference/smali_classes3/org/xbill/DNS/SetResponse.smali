.class public Lorg/xbill/DNS/SetResponse;
.super Ljava/lang/Object;
.source "SetResponse.java"


# static fields
.field private static final SR_NXDOMAIN:Lorg/xbill/DNS/SetResponse;

.field private static final SR_NXDOMAIN_AUTH:Lorg/xbill/DNS/SetResponse;

.field private static final SR_NXRRSET:Lorg/xbill/DNS/SetResponse;

.field private static final SR_NXRRSET_AUTH:Lorg/xbill/DNS/SetResponse;

.field private static final SR_UNKNOWN:Lorg/xbill/DNS/SetResponse;

.field private static final SR_UNKNOWN_AUTH:Lorg/xbill/DNS/SetResponse;


# instance fields
.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation
.end field

.field private isAuthenticated:Z

.field private final type:Lorg/xbill/DNS/SetResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_UNKNOWN:Lorg/xbill/DNS/SetResponse;

    .line 29
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_UNKNOWN_AUTH:Lorg/xbill/DNS/SetResponse;

    .line 30
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_NXDOMAIN:Lorg/xbill/DNS/SetResponse;

    .line 31
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-direct {v0, v1, v2, v4}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_NXDOMAIN_AUTH:Lorg/xbill/DNS/SetResponse;

    .line 32
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_NXRRSET:Lorg/xbill/DNS/SetResponse;

    .line 33
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    invoke-direct {v0, v1, v2, v4}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    sput-object v0, Lorg/xbill/DNS/SetResponse;->SR_NXRRSET_AUTH:Lorg/xbill/DNS/SetResponse;

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    iput-boolean p3, p0, Lorg/xbill/DNS/SetResponse;->isAuthenticated:Z

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/SetResponse;->addRRset(Lorg/xbill/DNS/RRset;)V

    :cond_0
    return-void
.end method

.method static ofType(Lorg/xbill/DNS/SetResponseType;)Lorg/xbill/DNS/SetResponse;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-static {p0, v0, v1}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object p0

    return-object p0
.end method

.method static ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/Cache$CacheRRset;)Lorg/xbill/DNS/SetResponse;
    .locals 1

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object p0

    return-object p0
.end method

.method static ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/SetResponse;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lorg/xbill/DNS/SetResponse;->ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;

    move-result-object p0

    return-object p0
.end method

.method static ofType(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)Lorg/xbill/DNS/SetResponse;
    .locals 2

    .line 63
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    invoke-virtual {p0}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 74
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/SetResponse;

    invoke-direct {v0, p0, p1, p2}, Lorg/xbill/DNS/SetResponse;-><init>(Lorg/xbill/DNS/SetResponseType;Lorg/xbill/DNS/RRset;Z)V

    return-object v0

    :pswitch_1
    if-eqz p2, :cond_0

    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_NXRRSET_AUTH:Lorg/xbill/DNS/SetResponse;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_NXRRSET:Lorg/xbill/DNS/SetResponse;

    :goto_0
    return-object p0

    :pswitch_2
    if-eqz p2, :cond_1

    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_NXDOMAIN_AUTH:Lorg/xbill/DNS/SetResponse;

    goto :goto_1

    :cond_1
    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_NXDOMAIN:Lorg/xbill/DNS/SetResponse;

    :goto_1
    return-object p0

    :pswitch_3
    if-eqz p2, :cond_2

    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_UNKNOWN_AUTH:Lorg/xbill/DNS/SetResponse;

    goto :goto_2

    :cond_2
    sget-object p0, Lorg/xbill/DNS/SetResponse;->SR_UNKNOWN:Lorg/xbill/DNS/SetResponse;

    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method addRRset(Lorg/xbill/DNS/RRset;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 81
    invoke-virtual {v0}, Lorg/xbill/DNS/SetResponseType;->isSealed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    .line 87
    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/SetResponse;->isAuthenticated:Z

    goto :goto_0

    .line 91
    :cond_0
    instance-of v0, p1, Lorg/xbill/DNS/Cache$CacheRRset;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xbill/DNS/SetResponse;->isAuthenticated:Z

    if-eqz v0, :cond_1

    .line 92
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Cache$CacheRRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/Cache$CacheRRset;->isAuthenticated()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/SetResponse;->isAuthenticated:Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 82
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to add RRset to sealed response of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public answers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 136
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    return-object v0
.end method

.method public getCNAME()Lorg/xbill/DNS/CNAMERecord;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    const/4 v1, 0x0

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    return-object v0
.end method

.method public getDNAME()Lorg/xbill/DNS/DNAMERecord;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    const/4 v1, 0x0

    .line 149
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/DNAMERecord;

    return-object v0
.end method

.method public getNS()Lorg/xbill/DNS/RRset;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 154
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/SetResponse;->isAuthenticated:Z

    return v0
.end method

.method public isCNAME()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 121
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDNAME()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 126
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDelegation()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 116
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNXDOMAIN()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 106
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNXRRSET()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 111
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 131
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnknown()Z
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    .line 101
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/SetResponse;->type:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->isPrintRecords()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/SetResponse;->data:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
