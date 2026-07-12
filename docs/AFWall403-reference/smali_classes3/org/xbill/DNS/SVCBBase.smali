.class public abstract Lorg/xbill/DNS/SVCBBase;
.super Lorg/xbill/DNS/Record;
.source "SVCBBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;,
        Lorg/xbill/DNS/SVCBBase$ParameterBase;,
        Lorg/xbill/DNS/SVCBBase$ParameterMandatory;,
        Lorg/xbill/DNS/SVCBBase$ParameterUnknown;,
        Lorg/xbill/DNS/SVCBBase$ParameterIpv6Hint;,
        Lorg/xbill/DNS/SVCBBase$ParameterEchConfig;,
        Lorg/xbill/DNS/SVCBBase$ParameterEch;,
        Lorg/xbill/DNS/SVCBBase$ParameterIpv4Hint;,
        Lorg/xbill/DNS/SVCBBase$ParameterPort;,
        Lorg/xbill/DNS/SVCBBase$ParameterNoDefaultAlpn;,
        Lorg/xbill/DNS/SVCBBase$ParameterAlpn;
    }
.end annotation


# static fields
.field public static final ALPN:I = 0x1

.field public static final ECH:I = 0x5

.field public static final ECHCONFIG:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IPV4HINT:I = 0x4

.field public static final IPV6HINT:I = 0x6

.field public static final MANDATORY:I = 0x0

.field public static final NO_DEFAULT_ALPN:I = 0x2

.field public static final PORT:I = 0x3

.field private static final parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;


# instance fields
.field protected final svcParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;"
        }
    .end annotation
.end field

.field protected svcPriority:I

.field protected targetName:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    invoke-direct {v0}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;-><init>()V

    sput-object v0, Lorg/xbill/DNS/SVCBBase;->parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    .line 115
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    const-string v3, "mandatory"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 116
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x1

    const-string v3, "alpn"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 117
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x2

    const-string v3, "no-default-alpn"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 118
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x3

    const-string v3, "port"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 119
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda4;-><init>()V

    const/4 v2, 0x4

    const-string v3, "ipv4hint"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 120
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda5;-><init>()V

    const/4 v2, 0x5

    const-string v3, "ech"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 121
    new-instance v1, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/xbill/DNS/SVCBBase$$ExternalSyntheticLambda6;-><init>()V

    const/4 v3, 0x6

    const-string v4, "ipv6hint"

    invoke-virtual {v0, v3, v4, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const-string v1, "echconfig"

    .line 123
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->addAlias(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 52
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/Name;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "IIJI",
            "Lorg/xbill/DNS/Name;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct/range {p0 .. p5}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    iput p6, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    iput-object p7, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    .line 66
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 67
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    iget-object p3, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 68
    invoke-virtual {p2}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->getKey()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 71
    invoke-virtual {p2}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->getKey()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Duplicate SvcParam for key "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->getKey()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method static synthetic access$000()Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/SVCBBase;->parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    return-object v0
.end method


# virtual methods
.method protected checkMandatoryParams()Z
    .locals 3

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/SVCBBase;->getSvcParamValue(I)Lorg/xbill/DNS/SVCBBase$ParameterBase;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/SVCBBase$ParameterMandatory;

    if-eqz v1, :cond_1

    .line 694
    invoke-static {v1}, Lorg/xbill/DNS/SVCBBase$ParameterMandatory;->access$100(Lorg/xbill/DNS/SVCBBase$ParameterMandatory;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 695
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/SVCBBase;->getSvcParamValue(I)Lorg/xbill/DNS/SVCBBase$ParameterBase;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getSvcParamKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 84
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSvcParamValue(I)Lorg/xbill/DNS/SVCBBase$ParameterBase;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    return-object p1
.end method

.method public getSvcPriority()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    return v0
.end method

.method public getTargetName()Lorg/xbill/DNS/Name;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method protected rdataFromString(Lorg/xbill/DNS/Tokenizer;Lorg/xbill/DNS/Name;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 751
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->getUInt16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    .line 752
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Tokenizer;->getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    iget-object p2, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 753
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 757
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p2

    .line 758
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v0

    if-nez v0, :cond_3

    .line 798
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->unget()V

    iget p1, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 800
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 801
    :cond_0
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    const-string p2, "No parameter values allowed for AliasMode"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 803
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/xbill/DNS/SVCBBase;->checkMandatoryParams()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 804
    :cond_2
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    const-string p2, "Not all mandatory SvcParams are specified"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 761
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "\'"

    if-ne v0, v1, :cond_4

    .line 764
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    goto :goto_2

    .line 765
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_6

    .line 767
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 768
    invoke-virtual {p1}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 770
    :cond_5
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected value for parameter key \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-lez v0, :cond_a

    .line 775
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 776
    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p2, v3

    :goto_2
    sget-object v3, Lorg/xbill/DNS/SVCBBase;->parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    .line 782
    invoke-virtual {v3, p2}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->getValue(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_9

    iget-object v1, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 786
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 789
    invoke-virtual {v3, v4}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->getFactory(I)Ljava/util/function/Supplier;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 791
    invoke-static {p2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    goto :goto_3

    .line 793
    :cond_7
    new-instance p2, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;

    invoke-direct {p2, v4}, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;-><init>(I)V

    .line 795
    :goto_3
    invoke-virtual {p2, v0}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->fromString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 796
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 787
    :cond_8
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate parameter key for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 784
    :cond_9
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected a valid parameter key for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 778
    :cond_a
    new-instance p1, Lorg/xbill/DNS/TextParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected valid parameter key=value for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/xbill/DNS/Tokenizer$Token;->value()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 705
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    .line 706
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 707
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 708
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 709
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 710
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 711
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    sget-object v2, Lorg/xbill/DNS/SVCBBase;->parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    .line 713
    invoke-virtual {v2, v0}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->getFactory(I)Ljava/util/function/Supplier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 715
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    goto :goto_1

    .line 717
    :cond_0
    new-instance v2, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/SVCBBase$ParameterUnknown;-><init>(I)V

    .line 719
    :goto_1
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->fromWire([B)V

    iget-object v1, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 720
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 722
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result p1

    if-gtz p1, :cond_3

    .line 725
    invoke-virtual {p0}, Lorg/xbill/DNS/SVCBBase;->checkMandatoryParams()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 726
    :cond_2
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "Not all mandatory SvcParams are specified"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 723
    :cond_3
    new-instance p1, Lorg/xbill/DNS/WireParseException;

    const-string v0, "Record had unexpected number of bytes"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected rrToString()Ljava/lang/String;
    .locals 6

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    .line 735
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 736
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 737
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lorg/xbill/DNS/SVCBBase;->parameters:Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;

    .line 738
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->getText(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    .line 740
    invoke-virtual {v3}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 741
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "="

    .line 742
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 746
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1

    iget p2, p0, Lorg/xbill/DNS/SVCBBase;->svcPriority:I

    .line 810
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object p2, p0, Lorg/xbill/DNS/SVCBBase;->targetName:Lorg/xbill/DNS/Name;

    const/4 v0, 0x0

    .line 811
    invoke-virtual {p2, p1, v0, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    iget-object p2, p0, Lorg/xbill/DNS/SVCBBase;->svcParams:Ljava/util/Map;

    .line 812
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 813
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 814
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/xbill/DNS/SVCBBase$ParameterBase;

    .line 815
    invoke-virtual {p3}, Lorg/xbill/DNS/SVCBBase$ParameterBase;->toWire()[B

    move-result-object p3

    .line 816
    array-length v0, p3

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 817
    invoke-virtual {p1, p3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
