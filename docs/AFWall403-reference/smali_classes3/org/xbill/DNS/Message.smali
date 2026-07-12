.class public Lorg/xbill/DNS/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final MAXLENGTH:I = 0xffff

.field static final TSIG_FAILED:I = 0x4

.field static final TSIG_INTERMEDIATE:I = 0x2

.field static final TSIG_SIGNED:I = 0x3

.field static final TSIG_UNSIGNED:I = 0x0

.field static final TSIG_VERIFIED:I = 0x1

.field private static final emptyRecordArray:[Lorg/xbill/DNS/Record;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private generatedTsig:Lorg/xbill/DNS/TSIGRecord;

.field private header:Lorg/xbill/DNS/Header;

.field private querytsig:Lorg/xbill/DNS/TSIGRecord;

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private sections:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation
.end field

.field sig0start:I

.field private size:I

.field tsigState:I

.field private tsigerror:I

.field private tsigkey:Lorg/xbill/DNS/TSIG;

.field tsigstart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Message;

    .line 26
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Message;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Record;

    sput-object v0, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0}, Lorg/xbill/DNS/Header;-><init>()V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 70
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Lorg/xbill/DNS/Header;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Header;-><init>(Lorg/xbill/DNS/DNSInput;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 103
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x6

    .line 104
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v3, v4, :cond_7

    :try_start_0
    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 107
    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v4

    if-lez v4, :cond_1

    iget-object v5, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    aput-object v6, v5, v3

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    .line 112
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v6

    .line 113
    invoke-static {p1, v3, v0}, Lorg/xbill/DNS/Record;->fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;

    move-result-object v7

    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 114
    aget-object v8, v8, v3

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x3

    if-ne v3, v8, :cond_4

    .line 116
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0xfa

    if-ne v8, v9, :cond_3

    iput v6, p0, Lorg/xbill/DNS/Message;->tsigstart:I

    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_2

    goto :goto_3

    .line 119
    :cond_2
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v2, "TSIG is not the last record in the message"

    invoke-direct {v0, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_3
    :goto_3
    invoke-virtual {v7}, Lorg/xbill/DNS/Record;->getType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_4

    .line 123
    check-cast v7, Lorg/xbill/DNS/SIGRecord;

    .line 124
    invoke-virtual {v7}, Lorg/xbill/DNS/SIGRecord;->getTypeCovered()I

    move-result v7

    if-nez v7, :cond_4

    iput v6, p0, Lorg/xbill/DNS/Message;->sig0start:I
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    if-eqz v1, :cond_6

    goto :goto_4

    .line 133
    :cond_6
    throw v0

    .line 136
    :cond_7
    :goto_4
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/Message;->size:I

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Header;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/DNSInput;)V

    return-void
.end method

.method private addAdditionalRRset(Lorg/xbill/DNS/RRset;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/RRset;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;)V"
        }
    .end annotation

    .line 1073
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Message;->doesTypeHaveAdditionalRecords(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 1078
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 1079
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getAdditionalName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1080
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lorg/xbill/DNS/Message;->isTypeAllowedInSection(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1081
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private doesTypeHaveAdditionalRecords(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-eq p1, v0, :cond_0

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x24

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$normalize$0(Lorg/xbill/DNS/RRset;)Z
    .locals 1

    .line 994
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    move-object v0, p2

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x7

    if-nez p1, :cond_0

    sget-object v9, Lorg/xbill/DNS/Message;->log:Lorg/slf4j/Logger;

    new-array v8, v8, [Ljava/lang/Object;

    .line 1048
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v10

    aput-object v10, v8, v7

    .line 1049
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 1050
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    aput-object p4, v8, v4

    .line 1052
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 1053
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1054
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    .line 1046
    invoke-interface {v9, p2, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 1034
    :cond_0
    new-instance v9, Lorg/xbill/DNS/WireParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{}"

    const-string v12, "%s"

    .line 1036
    invoke-virtual {p2, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v8, v8, [Ljava/lang/Object;

    .line 1037
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v11

    aput-object v11, v8, v7

    .line 1038
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    .line 1039
    invoke-virtual/range {p3 .. p3}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    aput-object p4, v8, v4

    .line 1041
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    .line 1042
    invoke-virtual/range {p5 .. p5}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 1043
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v1

    .line 1035
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;
    .locals 4

    .line 84
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-direct {v0}, Lorg/xbill/DNS/Message;-><init>()V

    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Header;->setOpcode(I)V

    iget-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v3, 0x7

    .line 86
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 87
    invoke-virtual {v0, p0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-object v0
.end method

.method public static newUpdate(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Message;
    .locals 1

    .line 98
    new-instance v0, Lorg/xbill/DNS/Update;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/Update;-><init>(Lorg/xbill/DNS/Name;)V

    return-object v0
.end method

.method private rrsetListToRecords(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    .line 1058
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1062
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1063
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    const/4 v2, 0x0

    .line 1064
    invoke-virtual {v1, v2}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1065
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private sectionToString(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x3

    if-le p2, v0, :cond_0

    return-void

    .line 618
    :cond_0
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    if-nez p2, :cond_1

    const-string v2, ";;\t"

    .line 620
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    .line 621
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class = "

    .line 622
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 624
    :cond_1
    instance-of v2, v1, Lorg/xbill/DNS/OPTRecord;

    if-nez v2, :cond_2

    .line 625
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    const-string v1, "\n"

    .line 628
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    return-void
.end method

.method private sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I
    .locals 8

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 443
    aget-object v0, v0, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 444
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v6, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 450
    aget-object v6, v6, p2

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/Record;

    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    .line 451
    instance-of v7, v6, Lorg/xbill/DNS/OPTRecord;

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    .line 455
    invoke-virtual {v6, v5}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/Record;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 456
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    move v4, v3

    .line 460
    :cond_1
    invoke-virtual {v6, p1, p2, p3}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 461
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v5

    if-le v5, p4, :cond_2

    .line 462
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    sub-int/2addr v0, v4

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v5, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v0, v3

    return v0
.end method

.method private toWire(Lorg/xbill/DNS/DNSOutput;I)V
    .locals 11

    const/16 v0, 0xc

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {v0}, Lorg/xbill/DNS/TSIG;->recordLength()I

    move-result v0

    sub-int/2addr p2, v0

    .line 481
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    const/4 v1, 0x3

    if-eqz v0, :cond_2

    .line 484
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/OPTRecord;->toWire(I)[B

    move-result-object v0

    .line 485
    array-length v2, v0

    sub-int/2addr p2, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 488
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 489
    invoke-virtual {v3, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 490
    new-instance v3, Lorg/xbill/DNS/Compression;

    invoke-direct {v3}, Lorg/xbill/DNS/Compression;-><init>()V

    iget-object v4, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 491
    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v6, v8, :cond_6

    iget-object v8, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 495
    aget-object v8, v8, v6

    if-nez v8, :cond_3

    goto :goto_3

    .line 498
    :cond_3
    invoke-direct {p0, p1, v6, v3, p2}, Lorg/xbill/DNS/Message;->sectionToWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;I)I

    move-result v8

    if-eqz v8, :cond_4

    if-eq v6, v1, :cond_4

    const/4 p2, 0x6

    .line 500
    invoke-static {v4, p2, v9}, Lorg/xbill/DNS/Header;->setFlag(IIZ)I

    move-result v4

    iget-object p2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 501
    invoke-virtual {p2, v6}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result p2

    sub-int/2addr p2, v8

    add-int/lit8 v8, v2, 0x4

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v8

    invoke-virtual {p1, p2, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    add-int/2addr v6, v9

    :goto_2
    if-ge v6, v1, :cond_6

    mul-int/lit8 p2, v6, 0x2

    add-int/2addr p2, v8

    .line 503
    invoke-virtual {p1, v5, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    if-ne v6, v1, :cond_5

    iget-object v7, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 508
    invoke-virtual {v7, v6}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v7

    sub-int/2addr v7, v8

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 513
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    add-int/lit8 v7, v7, 0x1

    :cond_7
    iget-object p2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 517
    invoke-virtual {p2}, Lorg/xbill/DNS/Header;->getFlagsByte()I

    move-result p2

    if-eq v4, p2, :cond_8

    add-int/lit8 p2, v2, 0x2

    .line 518
    invoke-virtual {p1, v4, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_8
    iget-object p2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 521
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result p2

    if-eq v7, p2, :cond_9

    add-int/lit8 p2, v2, 0xa

    .line 522
    invoke-virtual {p1, v7, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_9
    iget-object p2, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    if-eqz p2, :cond_a

    .line 526
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    iget v4, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iget-object v5, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    invoke-virtual {p2, p0, v0, v4, v5}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object p2

    .line 528
    invoke-virtual {p2, p1, v1, v3}, Lorg/xbill/DNS/TSIGRecord;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    iput-object p2, p0, Lorg/xbill/DNS/Message;->generatedTsig:Lorg/xbill/DNS/TSIGRecord;

    add-int/2addr v7, v9

    add-int/lit8 v2, v2, 0xa

    .line 530
    invoke-virtual {p1, v7, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    :cond_a
    return-void
.end method


# virtual methods
.method public addRecord(Lorg/xbill/DNS/Record;I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 182
    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    aput-object v1, v0, p2

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 185
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Header;->incCount(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 186
    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->clone()Lorg/xbill/DNS/Message;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/xbill/DNS/Message;
    .locals 5

    .line 678
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Message;

    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 679
    array-length v1, v1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 680
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 681
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 682
    iget-object v2, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    aget-object v4, v4, v1

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 685
    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->clone()Lorg/xbill/DNS/Header;

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    iget-object v1, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    if-eqz v1, :cond_2

    .line 687
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/TSIGRecord;

    iput-object v1, v0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    :cond_2
    iget-object v1, p0, Lorg/xbill/DNS/Message;->generatedTsig:Lorg/xbill/DNS/TSIGRecord;

    if-eqz v1, :cond_3

    .line 690
    invoke-virtual {v1}, Lorg/xbill/DNS/TSIGRecord;->cloneRecord()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/TSIGRecord;

    iput-object v1, v0, Lorg/xbill/DNS/Message;->generatedTsig:Lorg/xbill/DNS/TSIGRecord;

    :cond_3
    return-object v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;I)Z
    .locals 2

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 272
    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 273
    invoke-virtual {p0, p1, p2, v1}, Lorg/xbill/DNS/Message;->findRRset(Lorg/xbill/DNS/Name;II)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public findRRset(Lorg/xbill/DNS/Name;II)Z
    .locals 4

    .line 250
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 251
    invoke-static {p3}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 252
    aget-object v0, v0, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 255
    aget-object v2, v2, p3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 256
    aget-object v2, v2, p3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 257
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 236
    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public findRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1

    .line 224
    invoke-static {p2}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 225
    aget-object p2, v0, p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getGeneratedTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->generatedTsig:Lorg/xbill/DNS/TSIGRecord;

    return-object v0
.end method

.method public getHeader()Lorg/xbill/DNS/Header;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-object v0
.end method

.method public getOPT()Lorg/xbill/DNS/OPTRecord;
    .locals 3

    const/4 v0, 0x3

    .line 345
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 346
    instance-of v2, v1, Lorg/xbill/DNS/OPTRecord;

    if-eqz v2, :cond_0

    .line 347
    check-cast v1, Lorg/xbill/DNS/OPTRecord;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuestion()Lorg/xbill/DNS/Record;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    .line 283
    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 284
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRcode()I
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 355
    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v0

    .line 356
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v1}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getResolver()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/xbill/DNS/Resolver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Message;->resolver:Lorg/xbill/DNS/Resolver;

    .line 702
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getSection(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-static {p1}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 389
    aget-object p1, v0, p1

    if-nez p1, :cond_0

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 392
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSectionArray(I)[Lorg/xbill/DNS/Record;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    invoke-static {p1}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 374
    aget-object p1, v0, p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/xbill/DNS/Message;->emptyRecordArray:[Lorg/xbill/DNS/Record;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Record;

    .line 378
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/xbill/DNS/Record;

    return-object p1
.end method

.method public getSectionRRsets(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/RRset;",
            ">;"
        }
    .end annotation

    .line 403
    invoke-static {p1}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 404
    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 405
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 408
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 410
    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 412
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;

    .line 413
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Record;->sameRRset(Lorg/xbill/DNS/RRset;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    invoke-virtual {v3, v1}, Lorg/xbill/DNS/RRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 422
    :cond_2
    new-instance v2, Lorg/xbill/DNS/RRset;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getTSIG()Lorg/xbill/DNS/TSIGRecord;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x3

    .line 298
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->getCount(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 302
    aget-object v1, v3, v1

    add-int/lit8 v0, v0, -0x1

    .line 303
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 304
    iget v1, v0, Lorg/xbill/DNS/Record;->type:I

    const/16 v3, 0xfa

    if-eq v1, v3, :cond_1

    return-object v2

    .line 307
    :cond_1
    check-cast v0, Lorg/xbill/DNS/TSIGRecord;

    return-object v0
.end method

.method public isSigned()Z
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method isTypeAllowedInSection(II)Z
    .locals 2

    .line 711
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 712
    invoke-static {p2}, Lorg/xbill/DNS/Section;->check(I)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_1

    const/16 p2, 0x1c

    if-ne p1, p2, :cond_3

    :cond_1
    return v1

    :cond_2
    const/4 p2, 0x6

    if-eq p1, p2, :cond_4

    if-eq p1, v0, :cond_4

    const/16 p2, 0x2b

    if-eq p1, p2, :cond_4

    const/16 p2, 0x2f

    if-eq p1, p2, :cond_4

    const/16 p2, 0x32

    if-ne p1, p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, "dnsjava.harden_unknown_additional"

    const-string p2, "true"

    .line 730
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public isVerified()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/Message;->tsigState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public normalize(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 1

    const/4 v0, 0x0

    .line 749
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/Message;->normalize(Lorg/xbill/DNS/Message;Z)Lorg/xbill/DNS/Message;

    move-result-object p1
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public normalize(Lorg/xbill/DNS/Message;Z)Lorg/xbill/DNS/Message;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 774
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    const/4 v8, 0x3

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    if-eq v0, v8, :cond_0

    return-object v7

    .line 778
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v9, 0x1

    .line 779
    invoke-virtual {v7, v9}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v10

    .line 780
    invoke-virtual {v7, v8}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x2

    .line 781
    invoke-virtual {v7, v12}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v13

    .line 783
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 784
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 785
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    const/4 v0, 0x0

    .line 790
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x27

    if-ge v0, v1, :cond_f

    .line 791
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRset;

    .line 794
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    const-string v8, "%s"

    const-string v12, "{}"

    const/4 v5, 0x6

    const/16 v22, 0x4

    if-ne v2, v3, :cond_7

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 795
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    const/16 v23, 0x0

    if-le v2, v9, :cond_2

    const-string v0, "Normalization failed in response to <{}/{}/{}> (id {}), found {} entries (instead of just one) in DNAME RRSet <{}/{}>"

    if-nez p2, :cond_1

    sget-object v2, Lorg/xbill/DNS/Message;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    .line 804
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 805
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 806
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    .line 807
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v22

    .line 808
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v3, v6

    .line 809
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 801
    invoke-interface {v2, v0, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v23

    .line 799
    :cond_1
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    if-eq v2, v3, :cond_7

    .line 816
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x2

    if-lt v2, v3, :cond_3

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    goto :goto_1

    :cond_3
    move-object/from16 v2, v23

    .line 820
    :goto_1
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/DNAMERecord;

    if-eqz v2, :cond_4

    .line 824
    :try_start_0
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v9

    const/4 v5, 0x5

    if-ne v9, v5, :cond_4

    .line 825
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 828
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v3}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v3}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v9

    .line 827
    invoke-static {v5, v9}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v5

    .line 829
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v2}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v12, v4

    goto/16 :goto_4

    .line 835
    :cond_4
    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 836
    new-instance v5, Lorg/xbill/DNS/RRset;

    new-instance v9, Lorg/xbill/DNS/CNAMERecord;

    .line 837
    invoke-virtual {v3}, Lorg/xbill/DNS/DNAMERecord;->getDClass()I

    move-result v18

    const-wide/16 v19, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v4

    move-object/from16 v21, v2

    invoke-direct/range {v16 .. v21}, Lorg/xbill/DNS/CNAMERecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;)V

    invoke-direct {v5, v9}, Lorg/xbill/DNS/RRset;-><init>(Lorg/xbill/DNS/Record;)V

    .line 836
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_2

    .line 841
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    const/16 v5, 0xff

    if-ne v3, v5, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 842
    :goto_2
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 843
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/RRset;
    :try_end_1
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_1 .. :try_end_1} :catch_1

    .line 844
    :try_start_2
    invoke-virtual {v3}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 845
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v0, 0x1

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v2

    move-object v1, v3

    goto :goto_3

    :cond_5
    move-object v4, v2

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    const-string v2, "Normalization failed in response to <{}/{}/{}> (id {}), could not synthesize CNAME for DNAME <{}/{}>"

    if-nez p2, :cond_6

    sget-object v0, Lorg/xbill/DNS/Message;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 862
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 863
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 864
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 865
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    aput-object v4, v3, v22

    .line 866
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v3, v4

    .line 859
    invoke-interface {v0, v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v23

    .line 857
    :cond_6
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    const/4 v5, 0x0

    .line 873
    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v3, "Ignoring irrelevant RRset <{}/{}/{}> in response to <{}/{}/{}> (id {})"

    move-object v9, v1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v8, v4

    move-object v4, v9

    const/4 v9, 0x0

    move-object v5, v8

    move-object v12, v6

    move-object/from16 v6, p1

    .line 874
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    move-object v6, v12

    move-object v12, v8

    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_8
    move-object v9, v1

    move-object v5, v4

    const/4 v4, 0x0

    .line 884
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    if-eq v1, v2, :cond_c

    .line 885
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    const-string v1, "Found {} CNAMEs in <{}/{}> response to <{}/{}/{}> (id {}), removing all but the first"

    if-nez p2, :cond_9

    sget-object v3, Lorg/xbill/DNS/Message;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    .line 902
    invoke-virtual {v9, v4}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v4

    .line 903
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v12

    aput-object v12, v8, v2

    .line 904
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x2

    aput-object v2, v8, v12

    const/4 v2, 0x3

    aput-object v5, v8, v2

    .line 906
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v22

    .line 907
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x5

    aput-object v2, v8, v12

    .line 908
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x6

    aput-object v2, v8, v12

    .line 900
    invoke-interface {v3, v1, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    invoke-virtual {v9, v4}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    .line 910
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 911
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    invoke-virtual {v9, v3}, Lorg/xbill/DNS/RRset;->deleteRR(Lorg/xbill/DNS/Record;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 889
    :cond_9
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    .line 891
    invoke-virtual {v1, v12, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    .line 892
    invoke-virtual {v9, v4}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 893
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 894
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object v5, v2, v3

    .line 896
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v22

    .line 897
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 898
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 890
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_a
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 916
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0xff

    if-ne v2, v3, :cond_b

    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 920
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 921
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 922
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 923
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move-object v4, v1

    :goto_7
    const/4 v1, 0x1

    const/4 v8, 0x0

    goto :goto_9

    .line 934
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_d

    .line 935
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getActualType()I

    move-result v2

    if-eq v2, v1, :cond_d

    const-string v3, "Ignoring irrelevant RRset <{}/{}/{}> in ANSWER section response to <{}/{}/{}> (id {})"

    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v8, 0x0

    move-object v4, v9

    move-object v12, v5

    move-object v9, v6

    move-object/from16 v6, p1

    .line 936
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    move-object v6, v9

    goto :goto_8

    :cond_d
    move-object v12, v5

    const/4 v8, 0x0

    .line 946
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 947
    invoke-virtual {v9}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 948
    invoke-direct {v7, v9, v11, v6}, Lorg/xbill/DNS/Message;->addAdditionalRRset(Lorg/xbill/DNS/RRset;Ljava/util/List;Ljava/util/List;)V

    :cond_e
    :goto_8
    move-object v4, v12

    const/4 v1, 0x1

    :goto_9
    add-int/2addr v0, v1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_f
    move-object v12, v4

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 952
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/xbill/DNS/RRset;

    .line 953
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    if-eq v2, v1, :cond_16

    const/4 v5, 0x5

    if-eq v2, v5, :cond_16

    const/16 v1, 0x1c

    if-eq v2, v1, :cond_16

    if-eq v2, v3, :cond_16

    .line 967
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2}, Lorg/xbill/DNS/Message;->isTypeAllowedInSection(II)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v10, "Ignoring disallowed RRset <{}/{}/{}> in AUTHORITY section response to <{}/{}/{}> (id {})"

    move-object/from16 v1, p0

    const/16 v16, 0x5

    move/from16 v2, p2

    const/16 v17, 0x27

    move-object v3, v10

    move-object v5, v12

    move-object v10, v6

    move-object/from16 v6, p1

    .line 968
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    goto/16 :goto_d

    :cond_10
    move-object v10, v6

    const/16 v16, 0x5

    const/16 v17, 0x27

    .line 977
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_15

    .line 979
    invoke-virtual {v4}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v3, "Ignoring disallowed RRset <{}/{}/{}> in AUTHORITY section response to <{}/{}/{}> (id {}), not a subdomain of the query"

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v5, v12

    move-object/from16 v6, p1

    .line 980
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    goto :goto_d

    .line 992
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_14

    .line 993
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v1

    if-nez v1, :cond_12

    .line 994
    invoke-static {v13}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/Message$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/xbill/DNS/Message$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v7, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_12

    goto :goto_b

    :cond_12
    if-nez v9, :cond_13

    const/4 v9, 0x1

    goto :goto_c

    :cond_13
    const-string v3, "Ignoring disallowed RRset <{}/{}/{}> in AUTHORITY section response to <{}/{}/{}> (id {}), already seen another NS"

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v5, v12

    move-object/from16 v6, p1

    .line 1008
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    goto :goto_d

    :cond_14
    :goto_b
    const-string v3, "Ignoring disallowed RRset <{}/{}/{}> in AUTHORITY section response to <{}/{}/{}> (id {}), NXDOMAIN or NODATA"

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v5, v12

    move-object/from16 v6, p1

    .line 996
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    goto :goto_d

    .line 1018
    :cond_15
    :goto_c
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1019
    invoke-direct {v7, v4, v11, v10}, Lorg/xbill/DNS/Message;->addAdditionalRRset(Lorg/xbill/DNS/RRset;Ljava/util/List;Ljava/util/List;)V

    goto :goto_d

    :cond_16
    move-object v10, v6

    const/16 v16, 0x5

    const/16 v17, 0x27

    const-string v3, "Ignoring forbidden RRset <{}/{}/{}> in AUTHORITY section response to <{}/{}/{}> (id {})"

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v5, v12

    move-object/from16 v6, p1

    .line 958
    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/Message;->logOrThrow(ZLjava/lang/String;Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Message;)V

    :goto_d
    move-object v6, v10

    const/4 v1, 0x1

    const/16 v3, 0x27

    goto/16 :goto_a

    :cond_17
    move-object v10, v6

    .line 1022
    new-instance v0, Lorg/xbill/DNS/Message;

    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Message;-><init>(Lorg/xbill/DNS/Header;)V

    iget-object v1, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    iget-object v2, v7, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 1023
    aget-object v2, v2, v8

    aput-object v2, v1, v8

    .line 1024
    invoke-direct {v7, v14}, Lorg/xbill/DNS/Message;->rrsetListToRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 1025
    invoke-direct {v7, v15}, Lorg/xbill/DNS/Message;->rrsetListToRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v1, v0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 1026
    invoke-direct {v7, v10}, Lorg/xbill/DNS/Message;->rrsetListToRecords(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    return-object v0
.end method

.method public numBytes()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Message;->size:I

    return v0
.end method

.method public removeAllRecords(I)V
    .locals 2

    .line 212
    invoke-static {p1}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    const/4 v1, 0x0

    .line 213
    aput-object v1, v0, p1

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, p1, v1}, Lorg/xbill/DNS/Header;->setCount(II)V

    return-void
.end method

.method public removeRecord(Lorg/xbill/DNS/Record;I)Z
    .locals 1

    .line 196
    invoke-static {p2}, Lorg/xbill/DNS/Section;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 197
    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 198
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Header;->decCount(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public sectionToString(I)Ljava/lang/String;
    .locals 1

    .line 607
    invoke-static {p1}, Lorg/xbill/DNS/Section;->check(I)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->sectionToString(Ljava/lang/StringBuilder;I)V

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setHeader(Lorg/xbill/DNS/Header;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    return-void
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Message;->resolver:Lorg/xbill/DNS/Resolver;

    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 577
    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/Message;->setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V

    return-void
.end method

.method public setTSIG(Lorg/xbill/DNS/TSIG;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Message;->tsigkey:Lorg/xbill/DNS/TSIG;

    iput p2, p0, Lorg/xbill/DNS/Message;->tsigerror:I

    iput-object p3, p0, Lorg/xbill/DNS/Message;->querytsig:Lorg/xbill/DNS/TSIGRecord;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v1

    const/16 v2, 0xa

    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 638
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/xbill/DNS/Header;->toStringWithRcode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v1, v0}, Lorg/xbill/DNS/OPTRecord;->printPseudoSection(Ljava/lang/StringBuilder;)V

    .line 640
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isSigned()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ";; TSIG "

    .line 645
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->isVerified()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ok"

    .line 647
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "invalid"

    .line 649
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 654
    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, ":\n"

    const-string v5, ";; "

    if-eq v2, v3, :cond_3

    .line 655
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/xbill/DNS/Section;->longString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 657
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/xbill/DNS/Section;->updString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    :goto_3
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Message;->sectionToString(Ljava/lang/StringBuilder;I)V

    const-string v2, "\n"

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string v1, ";; Message size: "

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->numBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/Message;->header:Lorg/xbill/DNS/Header;

    .line 429
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Header;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 430
    new-instance v0, Lorg/xbill/DNS/Compression;

    invoke-direct {v0}, Lorg/xbill/DNS/Compression;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/Message;->sections:[Ljava/util/List;

    .line 431
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 432
    aget-object v2, v2, v1

    if-nez v2, :cond_0

    goto :goto_2

    .line 435
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 436
    invoke-virtual {v3, p1, v1, v0}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toWire()[B
    .locals 2

    .line 541
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 542
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 543
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 544
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toWire(I)[B
    .locals 1

    .line 564
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 565
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;I)V

    .line 566
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/Message;->size:I

    .line 567
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
