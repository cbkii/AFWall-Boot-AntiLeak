.class public Lorg/xbill/DNS/Tokenizer$Token;
.super Ljava/lang/Object;
.source "Tokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Token"
.end annotation


# instance fields
.field public type:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public value:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/StringBuilder;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    iput p1, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-void

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(ILjava/lang/StringBuilder;Lorg/xbill/DNS/Tokenizer$1;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(ILjava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public isEOL()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isString()Z
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    const-string v2, ">"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "<unknown>"

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<comment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<quoted_string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<identifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v0, "<whitespace>"

    return-object v0

    :cond_4
    const-string v0, "<eol>"

    return-object v0

    :cond_5
    const-string v0, "<eof>"

    return-object v0
.end method

.method public type()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    return v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0
.end method
