.class public Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;
.super Ljava/lang/Object;
.source "PropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(B)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(C)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(D)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(F)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(I)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(J)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TModel:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable<",
            "TTModel;>;)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TTModel;>;"
        }
    .end annotation

    .line 126
    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getTable()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/raizlabs/android/dbflow/sql/queriable/ModelQueriable;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Class;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    return-object p0
.end method

.method public static from(Ljava/lang/Class;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 139
    new-instance p0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object p0
.end method

.method public static from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "TT;>;"
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    .line 113
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/Operator;->convertValueToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method

.method public static from(S)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Lcom/raizlabs/android/dbflow/sql/language/property/Property<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    return-object v0
.end method
