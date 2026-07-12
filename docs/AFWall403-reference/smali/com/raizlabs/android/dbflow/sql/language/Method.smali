.class public Lcom/raizlabs/android/dbflow/sql/language/Method;
.super Lcom/raizlabs/android/dbflow/sql/language/property/Property;
.source "Method.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;
    }
.end annotation


# instance fields
.field private final methodProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

.field private operationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 3

    const/4 v0, 0x0

    .line 165
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v0}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->operationsList:Ljava/util/List;

    .line 167
    new-instance v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/Property;-><init>(Ljava/lang/Class;Lcom/raizlabs/android/dbflow/sql/language/NameAlias;)V

    iput-object v2, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->methodProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 169
    array-length p1, p2

    if-nez p1, :cond_0

    .line 170
    sget-object p1, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 172
    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 173
    invoke-virtual {p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->addProperty(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public varargs constructor <init>([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-void
.end method

.method public static varargs avg([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 26
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "AVG"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static cast(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;
    .locals 2

    .line 90
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method$Cast;-><init>(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Lcom/raizlabs/android/dbflow/sql/language/Method$1;)V

    return-object v0
.end method

.method public static varargs count([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 36
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "COUNT"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs date(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 3

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    .line 132
    invoke-static {v2}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string v0, "date"

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object p0
.end method

.method public static varargs datetime(J[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-static {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(J)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v1, p2, p1

    .line 119
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string p2, "datetime"

    invoke-direct {p0, p2, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object p0
.end method

.method public static varargs group_concat([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 45
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "GROUP_CONCAT"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static ifNull(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 3

    .line 143
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "IFNULL"

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs max([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 54
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "MAX"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs min([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 63
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "MIN"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static nullIf(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 3

    .line 152
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "NULLIF"

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static replace(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 3

    .line 95
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "REPLACE"

    invoke-direct {v0, p0, v1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs strftime(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-static {p0}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {p1}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    array-length p0, p2

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget-object v1, p2, p1

    .line 107
    invoke-static {v1}, Lcom/raizlabs/android/dbflow/sql/language/property/PropertyFactory;->from(Ljava/lang/Object;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance p0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    const-string p2, "strftime"

    invoke-direct {p0, p2, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object p0
.end method

.method public static varargs sum([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 72
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "SUM"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method

.method public static varargs total([Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 2

    .line 81
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/language/Method;

    const-string v1, "TOTAL"

    invoke-direct {v0, v1, p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;-><init>(Ljava/lang/String;[Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)V

    return-object v0
.end method


# virtual methods
.method public addProperty(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 1

    const-string v0, ","

    .line 214
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    .line 223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/raizlabs/android/dbflow/sql/language/property/Property;->ALL_PROPERTY:Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    .line 226
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->operationsList:Ljava/util/List;

    .line 227
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public div(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 1

    const-string v0, " /"

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public getNameAlias()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->methodProperty:Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    .line 240
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->getPropertyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 246
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 247
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;

    if-lez v2, :cond_1

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->operationsList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias;->rawBuilder(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/sql/language/NameAlias$Builder;->build()Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->nameAlias:Lcom/raizlabs/android/dbflow/sql/language/NameAlias;

    return-object v0
.end method

.method protected getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/sql/language/Method;->propertyList:Ljava/util/List;

    return-object v0
.end method

.method public minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 1

    const-string v0, " -"

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->minus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;
    .locals 1

    const-string v0, " +"

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->plus(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public rem(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 1

    const-string v0, " %"

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/sql/language/Method;->times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;

    move-result-object p1

    return-object p1
.end method

.method public times(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;)Lcom/raizlabs/android/dbflow/sql/language/property/Property;
    .locals 1

    const-string v0, " *"

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/raizlabs/android/dbflow/sql/language/Method;->append(Lcom/raizlabs/android/dbflow/sql/language/property/IProperty;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/language/Method;

    move-result-object p1

    return-object p1
.end method
