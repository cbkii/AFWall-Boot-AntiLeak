.class public Lorg/xbill/DNS/tools/Tools;
.super Ljava/lang/Object;
.source "Tools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
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

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    .line 6
    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    .line 19
    aget-object v2, p0, v1

    .line 20
    array-length v3, p0

    sub-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 21
    array-length v4, p0

    sub-int/2addr v4, v0

    invoke-static {p0, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v4, -0x1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    const/4 v0, -0x1

    goto :goto_1

    :sswitch_0
    const-string p0, "xfrin"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string p0, "dig"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string p0, "primary"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string p0, "update"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string p0, "lookup"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :sswitch_5
    const-string p0, "jnamed"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 42
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "invalid command"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 39
    :pswitch_0
    invoke-static {v3}, Lorg/xbill/DNS/tools/xfrin;->main([Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :pswitch_1
    invoke-static {v3}, Lorg/xbill/DNS/tools/dig;->main([Ljava/lang/String;)V

    goto :goto_2

    .line 33
    :pswitch_2
    invoke-static {v3}, Lorg/xbill/DNS/tools/primary;->main([Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :pswitch_3
    invoke-static {v3}, Lorg/xbill/DNS/tools/update;->main([Ljava/lang/String;)V

    goto :goto_2

    .line 30
    :pswitch_4
    invoke-static {v3}, Lorg/xbill/DNS/tools/lookup;->main([Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :pswitch_5
    invoke-static {v3}, Lorg/xbill/DNS/tools/jnamed;->main([Ljava/lang/String;)V

    :goto_2
    return-void

    .line 7
    :cond_7
    :goto_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: <command> <options>"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  Commands:"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    dig"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 10
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    jnamed"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    lookup"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 12
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    primary"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    update"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    xfrin"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44e276f1 -> :sswitch_5
        -0x41645686 -> :sswitch_4
        -0x31ffc737 -> :sswitch_3
        -0x12c2f1fe -> :sswitch_2
        0x18482 -> :sswitch_1
        0x6cb1b69 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
