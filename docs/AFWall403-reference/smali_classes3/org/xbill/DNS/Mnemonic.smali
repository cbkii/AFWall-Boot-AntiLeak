.class Lorg/xbill/DNS/Mnemonic;
.super Ljava/lang/Object;
.source "Mnemonic.java"


# static fields
.field static final CASE_LOWER:I = 0x3

.field static final CASE_SENSITIVE:I = 0x1

.field static final CASE_UPPER:I = 0x2


# instance fields
.field private final description:Ljava/lang/String;

.field private max:I

.field private numericok:Z

.field private prefix:Ljava/lang/String;

.field private final strings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wordcase:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    iput p2, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    const p1, 0x7fffffff

    iput p1, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    return-void
.end method

.method static synthetic lambda$remove$0(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 112
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseNumeric(Ljava/lang/String;)I
    .locals 1

    .line 82
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->max:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gt p1, v0, :cond_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private sanitize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/String;)V
    .locals 2

    .line 98
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 99
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAlias(ILjava/lang/String;)V
    .locals 1

    .line 123
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    .line 124
    invoke-direct {p0, p2}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAll(Lorg/xbill/DNS/Mnemonic;)V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    .line 146
    iget v1, p1, Lorg/xbill/DNS/Mnemonic;->wordcase:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 149
    iget-object v1, p1, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    .line 150
    iget-object p1, p1, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": wordcases do not match"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public check(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    if-gt p1, v0, :cond_0

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Mnemonic;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2

    .line 160
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Mnemonic;->check(I)V

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 165
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public getValue(Ljava/lang/String;)I
    .locals 1

    .line 179
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 180
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 185
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    iget-boolean v0, p0, Lorg/xbill/DNS/Mnemonic;->numericok:Z

    if-eqz v0, :cond_2

    .line 193
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->parseNumeric(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->values:Ljava/util/HashMap;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 112
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/Mnemonic$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Mnemonic$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Set;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public removeAlias(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/xbill/DNS/Mnemonic;->strings:Ljava/util/HashMap;

    .line 136
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMaximum(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Mnemonic;->max:I

    return-void
.end method

.method public setNumericAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/Mnemonic;->numericok:Z

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Mnemonic;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Mnemonic;->prefix:Ljava/lang/String;

    return-void
.end method
