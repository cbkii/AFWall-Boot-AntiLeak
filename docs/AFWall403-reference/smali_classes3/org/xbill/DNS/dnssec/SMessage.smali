.class final Lorg/xbill/DNS/dnssec/SMessage;
.super Ljava/lang/Object;
.source "SMessage.java"


# static fields
.field private static final EXTENDED_FLAGS_BIT_OFFSET:I = 0x4

.field private static final MAX_FLAGS:I = 0x10

.field private static final NUM_SECTIONS:I = 0x3

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private bogusReason:Ljava/lang/String;

.field private edeReason:I

.field private final header:Lorg/xbill/DNS/Header;

.field private oPTRecord:Lorg/xbill/DNS/OPTRecord;

.field private question:Lorg/xbill/DNS/Record;

.field private final sections:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;"
        }
    .end annotation
.end field

.field private securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/SMessage;

    .line 28
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/SMessage;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(ILorg/xbill/DNS/Record;)V
    .locals 1

    .line 61
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/SMessage;-><init>(Lorg/xbill/DNS/Header;)V

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/SMessage;->question:Lorg/xbill/DNS/Record;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->edeReason:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->sections:[Ljava/util/List;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    .line 51
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SMessage;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Message;)V
    .locals 4

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/dnssec/SMessage;-><init>(Lorg/xbill/DNS/Header;)V

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->question:Lorg/xbill/DNS/Record;

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->oPTRecord:Lorg/xbill/DNS/OPTRecord;

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 76
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 77
    new-instance v3, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/dnssec/SRRset;-><init>(Lorg/xbill/DNS/RRset;)V

    invoke-direct {p0, v3, v0}, Lorg/xbill/DNS/dnssec/SMessage;->addRRset(Lorg/xbill/DNS/dnssec/SRRset;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addRRset(Lorg/xbill/DNS/dnssec/SRRset;I)V
    .locals 2

    .line 117
    invoke-direct {p0, p2}, Lorg/xbill/DNS/dnssec/SMessage;->checkSectionValidity(I)V

    .line 119
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/OPTRecord;

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SMessage;->oPTRecord:Lorg/xbill/DNS/OPTRecord;

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p2

    .line 125
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkSectionValidity(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid section"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public findAnswerRRset(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/dnssec/SRRset;
    .locals 1

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/xbill/DNS/dnssec/SMessage;->findRRset(Lorg/xbill/DNS/Name;III)Lorg/xbill/DNS/dnssec/SRRset;

    move-result-object p1

    return-object p1
.end method

.method public findRRset(Lorg/xbill/DNS/Name;III)Lorg/xbill/DNS/dnssec/SRRset;
    .locals 2

    .line 324
    invoke-direct {p0, p4}, Lorg/xbill/DNS/dnssec/SMessage;->checkSectionValidity(I)V

    .line 326
    invoke-virtual {p0, p4}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 327
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    if-ne v1, p3, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBogusReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->bogusReason:Ljava/lang/String;

    return-object v0
.end method

.method public getCount(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 301
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 307
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 308
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->size()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getEdeReason()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->edeReason:I

    return v0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getMessage()Lorg/xbill/DNS/Message;
    .locals 6

    .line 247
    new-instance v0, Lorg/xbill/DNS/Message;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 255
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    .line 256
    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    .line 257
    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 259
    invoke-static {v3}, Lorg/xbill/DNS/Flags;->isFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/dnssec/SMessage;->question:Lorg/xbill/DNS/Record;

    if-eqz v1, :cond_2

    .line 267
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    :cond_2
    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x3

    if-gt v1, v2, :cond_6

    .line 271
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v2

    .line 272
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/dnssec/SRRset;

    .line 273
    invoke-virtual {v3}, Lorg/xbill/DNS/dnssec/SRRset;->rrs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Record;

    .line 274
    invoke-virtual {v0, v5, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_2

    .line 277
    :cond_4
    invoke-virtual {v3}, Lorg/xbill/DNS/dnssec/SRRset;->sigs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/RRSIGRecord;

    .line 278
    invoke-virtual {v0, v4, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/xbill/DNS/dnssec/SMessage;->oPTRecord:Lorg/xbill/DNS/OPTRecord;

    if-eqz v1, :cond_7

    .line 284
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    :cond_7
    return-object v0
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->question:Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getRcode()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->header:Lorg/xbill/DNS/Header;

    .line 164
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/SMessage;->oPTRecord:Lorg/xbill/DNS/OPTRecord;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getSectionRRsets(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1}, Lorg/xbill/DNS/dnssec/SMessage;->checkSectionValidity(I)V

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->sections:[Ljava/util/List;

    add-int/lit8 p1, p1, -0x1

    .line 109
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->sections:[Ljava/util/List;

    .line 113
    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSectionRRsets(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/dnssec/SRRset;

    .line 150
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/SMessage;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object v0
.end method

.method public setBogus(Ljava/lang/String;)V
    .locals 2

    .line 211
    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-void
.end method

.method public setBogus(Ljava/lang/String;I)V
    .locals 1

    .line 220
    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {p0, v0, p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-void
.end method

.method public setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-void
.end method

.method public setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/SMessage;->securityStatus:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iput p2, p0, Lorg/xbill/DNS/dnssec/SMessage;->edeReason:I

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/SMessage;->bogusReason:Ljava/lang/String;

    if-eqz p3, :cond_0

    sget-object p1, Lorg/xbill/DNS/dnssec/SMessage;->log:Lorg/slf4j/Logger;

    const-string p2, "Setting bad reason for message to {}"

    .line 201
    invoke-interface {p1, p2, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
