.class public Lorg/xbill/DNS/tools/lookup;
.super Ljava/lang/Object;
.source "lookup.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    aget-object v0, p0, v2

    const-string v4, "-t"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    aget-object v0, p0, v1

    invoke-static {v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_1
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_2

    .line 55
    new-instance v0, Lorg/xbill/DNS/Lookup;

    aget-object v3, p0, v2

    invoke-direct {v0, v3, v1}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    .line 57
    aget-object v3, p0, v2

    invoke-static {v3, v0}, Lorg/xbill/DNS/tools/lookup;->printAnswer(Ljava/lang/String;Lorg/xbill/DNS/Lookup;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static printAnswer(Ljava/lang/String;Lorg/xbill/DNS/Lookup;)V
    .locals 5

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result p0

    const-string v0, " "

    if-eqz p0, :cond_0

    .line 22
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 24
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 25
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getAliases()[Lorg/xbill/DNS/Name;

    move-result-object p0

    .line 26
    array-length v1, p0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 27
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "# aliases: "

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 28
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 29
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 30
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 31
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    .line 36
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getResult()I

    move-result p0

    if-nez p0, :cond_4

    .line 37
    invoke-virtual {p1}, Lorg/xbill/DNS/Lookup;->getAnswers()[Lorg/xbill/DNS/Record;

    move-result-object p0

    .line 38
    array-length p1, p0

    :goto_1
    if-ge v2, p1, :cond_4

    aget-object v0, p0, v2

    .line 39
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
