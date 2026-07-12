.class public Lorg/xbill/DNS/Tokenizer;
.super Ljava/lang/Object;
.source "Tokenizer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Tokenizer$Token;
    }
.end annotation


# static fields
.field public static final COMMENT:I = 0x5

.field private static final DEFAULT_DELIMITERS:Ljava/lang/String; = " \t\n;()\""

.field public static final EOF:I = 0x0

.field public static final EOL:I = 0x1

.field public static final IDENTIFIER:I = 0x3

.field public static final QUOTED_STRING:I = 0x4

.field private static final QUOTES:Ljava/lang/String; = "\""

.field public static final WHITESPACE:I = 0x2


# instance fields
.field private current:Lorg/xbill/DNS/Tokenizer$Token;

.field private delimiters:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private final is:Ljava/io/PushbackInputStream;

.field private line:I

.field private multiline:I

.field private quoting:Z

.field private final sb:Ljava/lang/StringBuilder;

.field private ungottenToken:Z

.field private wantClose:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    .line 189
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 162
    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    iput p1, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    iput-boolean p1, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    const-string p1, " \t\n;()\""

    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    const-string p1, "<none>"

    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private checkUnbalancedParens()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "unbalanced parentheses"

    .line 231
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method private getChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 193
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 195
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 197
    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_0
    const/16 v0, 0xa

    :cond_1
    if-ne v0, v2, :cond_2

    iget v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_2
    return v0
.end method

.method private getIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 402
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 405
    iget-object p1, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object p1

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method private remainingStrings()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    .line 594
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v2

    .line 595
    invoke-virtual {v2}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v3

    if-nez v3, :cond_1

    .line 603
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->unget()V

    if-nez v1, :cond_0

    return-object v0

    .line 607
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-nez v1, :cond_2

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    :cond_2
    iget-object v2, v2, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 2

    .line 355
    new-instance v0, Lorg/xbill/DNS/Tokenizer$Token;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/xbill/DNS/Tokenizer$Token;-><init>(ILjava/lang/StringBuilder;Lorg/xbill/DNS/Tokenizer$1;)V

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object v0
.end method

.method private skipWhitespace()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-gtz v2, :cond_1

    .line 222
    :cond_0
    invoke-direct {p0, v1}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private ungetChar(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 211
    invoke-virtual {v0, p1}, Ljava/io/PushbackInputStream;->unread(I)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    iget p1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->wantClose:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->is:Ljava/io/PushbackInputStream;

    .line 738
    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3

    .line 730
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public get()Lorg/xbill/DNS/Tokenizer$Token;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, v0, v0}, Lorg/xbill/DNS/Tokenizer;->get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    return-object v0
.end method

.method public get(ZZ)Lorg/xbill/DNS/Tokenizer$Token;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 250
    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v2, :cond_0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 254
    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_3

    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 259
    iget p1, p1, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-ne p1, v3, :cond_2

    iget p1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_2
    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    return-object p1

    .line 265
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    move-result v0

    const/4 v5, 0x0

    if-lez v0, :cond_4

    if-eqz p1, :cond_4

    .line 267
    invoke-direct {p0, v2, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 p1, 0x3

    .line 272
    :goto_0
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    const/16 v2, 0xa

    const/4 v6, -0x1

    if-eq v0, v6, :cond_a

    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 273
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v6, :cond_5

    goto :goto_2

    :cond_5
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_7

    .line 337
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    if-eq v0, v6, :cond_6

    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string p1, "unterminated escape sequence"

    .line 339
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    :cond_7
    iget-boolean v6, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-eqz v6, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, "newline in quoted string"

    .line 343
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    .line 345
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    :goto_2
    if-ne v0, v6, :cond_d

    iget-boolean p2, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_b

    .line 278
    invoke-direct {p0, v4, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_c
    const-string p1, "EOF in quoted string"

    .line 276
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    :cond_d
    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x4

    if-nez v7, :cond_1a

    if-eq p1, v8, :cond_1a

    const/16 v7, 0x28

    if-ne v0, v7, :cond_e

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 286
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto :goto_0

    :cond_e
    const/16 v7, 0x29

    if-ne v0, v7, :cond_10

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v0, :cond_f

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    .line 293
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto/16 :goto_0

    :cond_f
    const-string p1, "invalid close parenthesis"

    .line 290
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    :cond_10
    const/16 v7, 0x22

    if-ne v0, v7, :cond_12

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    if-nez v0, :cond_11

    iput-boolean v3, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    const-string p1, "\""

    iput-object p1, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    const/4 p1, 0x4

    goto/16 :goto_0

    :cond_11
    iput-boolean v4, p0, Lorg/xbill/DNS/Tokenizer;->quoting:Z

    const-string v0, " \t\n;()\""

    iput-object v0, p0, Lorg/xbill/DNS/Tokenizer;->delimiters:Ljava/lang/String;

    .line 303
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    goto/16 :goto_0

    :cond_12
    if-ne v0, v2, :cond_13

    .line 307
    invoke-direct {p0, v3, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_13
    const/16 v7, 0x3b

    if-ne v0, v7, :cond_19

    .line 310
    :goto_3
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->getChar()I

    move-result v0

    if-eq v0, v2, :cond_15

    if-ne v0, v6, :cond_14

    goto :goto_4

    :cond_14
    iget-object v7, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    int-to-char v0, v0

    .line 314
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_15
    :goto_4
    if-eqz p2, :cond_16

    .line 317
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    iget-object p1, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {p0, v1, p1}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_16
    if-ne v0, v6, :cond_17

    if-eq p1, v8, :cond_17

    .line 320
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 321
    invoke-direct {p0, v4, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_17
    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->multiline:I

    if-lez v0, :cond_18

    .line 323
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->skipWhitespace()I

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 327
    :cond_18
    invoke-direct {p0, v3, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    .line 330
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 333
    :cond_1a
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->ungetChar(I)V

    iget-object p2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_1b

    if-eq p1, v8, :cond_1b

    .line 348
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->checkUnbalancedParens()V

    .line 349
    invoke-direct {p0, v4, v5}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1

    :cond_1b
    iget-object p2, p0, Lorg/xbill/DNS/Tokenizer;->sb:Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/Tokenizer;->setCurrentToken(ILjava/lang/StringBuilder;)Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object p1

    return-object p1
.end method

.method public getAddress(I)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "an address"

    .line 569
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->getByAddress(Ljava/lang/String;I)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 573
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getAddressBytes(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "an address"

    .line 551
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {v0, p1}, Lorg/xbill/DNS/Address;->toByteArray(Ljava/lang/String;I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 554
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid address: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getBase32String(Lorg/xbill/DNS/utils/base32;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "a base32 string"

    .line 715
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/utils/base32;->fromString(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "invalid base32 encoding"

    .line 718
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getBase64()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 647
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getBase64(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getBase64(Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "expected base64 encoded string"

    .line 625
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    .line 630
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/utils/base64;->fromString(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const-string p1, "invalid base64 encoding"

    .line 632
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getEOL()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 585
    iget v1, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "expected EOL or EOF"

    .line 586
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public getHex()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 687
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getHex(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getHex(Z)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-direct {p0}, Lorg/xbill/DNS/Tokenizer;->remainingStrings()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "expected hex encoded string"

    .line 665
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1

    .line 670
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const-string p1, "invalid hex encoding"

    .line 672
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getHexString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "a hex string"

    .line 698
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    invoke-static {v0}, Lorg/xbill/DNS/utils/base16;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "invalid hex encoding"

    .line 701
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "an identifier"

    .line 417
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "an integer"

    .line 428
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    const-string v2, "expected an integer"

    if-eqz v1, :cond_0

    .line 433
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 435
    :catch_0
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0

    .line 430
    :cond_0
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getName(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "a name"

    .line 529
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    :try_start_0
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 533
    :cond_0
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 537
    invoke-virtual {p1}, Lorg/xbill/DNS/TextParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object p1

    throw p1
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->get()Lorg/xbill/DNS/Tokenizer$Token;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lorg/xbill/DNS/Tokenizer$Token;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-object v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->value:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "expected a string"

    .line 395
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getTTL()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "a TTL value"

    .line 493
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    :try_start_0
    invoke-static {v0}, Lorg/xbill/DNS/TTL;->parseTTL(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string v0, "expected a TTL value"

    .line 497
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getTTLLike()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "a TTL-like value"

    .line 510
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Tokenizer;->getIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 512
    :try_start_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/TTL;->parse(Ljava/lang/String;Z)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string v0, "expected a TTL-like value"

    .line 514
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getUInt16()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0xffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    return v1

    :cond_0
    const-string v0, "expected an 16 bit unsigned integer"

    .line 464
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getUInt32()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide v2, 0xffffffffL

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-wide v0

    :cond_0
    const-string v0, "expected an 32 bit unsigned integer"

    .line 449
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public getUInt8()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p0}, Lorg/xbill/DNS/Tokenizer;->getLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/16 v2, 0xff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    return v1

    :cond_0
    const-string v0, "expected an 8 bit unsigned integer"

    .line 479
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Tokenizer;->exception(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v0

    throw v0
.end method

.method public unget()V
    .locals 2

    iget-boolean v0, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Tokenizer;->current:Lorg/xbill/DNS/Tokenizer$Token;

    .line 379
    iget v0, v0, Lorg/xbill/DNS/Tokenizer$Token;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xbill/DNS/Tokenizer;->line:I

    :cond_0
    iput-boolean v1, p0, Lorg/xbill/DNS/Tokenizer;->ungottenToken:Z

    return-void

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unget multiple tokens"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
