.class public final Lorg/xbill/DNS/lookup/LookupResult;
.super Ljava/lang/Object;
.source "LookupResult.java"


# instance fields
.field private final aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field private final isAuthenticated:Z

.field private final queryResponsePairs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Record;",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final records:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->records:Ljava/util/List;

    if-nez p2, :cond_0

    .line 69
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->aliases:Ljava/util/List;

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Record;ZLorg/xbill/DNS/Record;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    invoke-static {p1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    iput-boolean p2, p0, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    .line 85
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->records:Ljava/util/List;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->aliases:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Message;ZLjava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            "Lorg/xbill/DNS/Record;",
            "Lorg/xbill/DNS/Message;",
            "Z",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    iget-object v1, p1, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 98
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    .line 100
    iget-boolean p1, p1, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 103
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Collection;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/lookup/LookupResult$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/xbill/DNS/lookup/LookupResult$$ExternalSyntheticLambda2;-><init>()V

    .line 104
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/lookup/LookupResult$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/xbill/DNS/lookup/LookupResult$$ExternalSyntheticLambda3;-><init>()V

    .line 105
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->records:Ljava/util/List;

    .line 107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->aliases:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    iput-boolean p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    .line 78
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->records:Ljava/util/List;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupResult;->aliases:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$new$0(Lorg/xbill/DNS/Message;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 23
    :cond_0
    instance-of v1, p1, Lorg/xbill/DNS/lookup/LookupResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated()Z

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated()Z

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getAliases()Ljava/util/List;

    move-result-object v3

    if-nez v1, :cond_5

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    :goto_1
    return v2

    :cond_6
    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getQueryResponsePairs()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getQueryResponsePairs()Ljava/util/Map;

    move-result-object p1

    if-nez v1, :cond_7

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    :goto_2
    return v2

    :cond_8
    return v0
.end method

.method public getAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupResult;->aliases:Ljava/util/List;

    return-object v0
.end method

.method getQueryResponsePairs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Record;",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupResult;->queryResponsePairs:Ljava/util/Map;

    return-object v0
.end method

.method public getRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupResult;->records:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 23
    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    const/16 v1, 0x3b

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    const/16 v3, 0x2b

    if-nez v2, :cond_1

    const/16 v2, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getAliases()Ljava/util/List;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_2

    const/16 v2, 0x2b

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getQueryResponsePairs()Ljava/util/Map;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LookupResult(records="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aliases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryResponsePairs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->getQueryResponsePairs()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAuthenticated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xbill/DNS/lookup/LookupResult;->isAuthenticated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
