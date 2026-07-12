.class public Lorg/xbill/DNS/DnssecAlgorithmOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "DnssecAlgorithmOption.java"


# instance fields
.field private final algCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid option code, must be one of DAU, DHU, N3U"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DnssecAlgorithmOption;-><init>(I)V

    iget-object p1, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 3

    .line 39
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DnssecAlgorithmOption;-><init>(I)V

    if-eqz p2, :cond_0

    .line 41
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p2, v0

    iget-object v2, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAlgorithms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 48
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 55
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 3

    .line 67
    invoke-virtual {p0}, Lorg/xbill/DNS/DnssecAlgorithmOption;->getCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 75
    new-instance v0, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda6;-><init>()V

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown option code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda5;-><init>()V

    goto :goto_0

    .line 69
    :cond_2
    new-instance v0, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda4;-><init>()V

    .line 80
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v2, ", "

    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DnssecAlgorithmOption;->algCodes:Ljava/util/List;

    .line 61
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/DnssecAlgorithmOption$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/DNSOutput;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
