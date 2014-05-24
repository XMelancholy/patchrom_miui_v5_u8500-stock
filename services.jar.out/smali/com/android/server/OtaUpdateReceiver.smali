.class public Lcom/android/server/OtaUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OtaUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OtaUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    const-string v1, "OtaUpdateReceiver"

    const-string v2, "!!! RECOVERY MODE UPDATE PACKAGE !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Lcom/android/server/OtaUpdateReceiver$1;

    const-string v1, "Reboot"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/OtaUpdateReceiver$1;-><init>(Lcom/android/server/OtaUpdateReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 51
    .local v0, thr:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 52
    return-void
.end method
