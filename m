Return-Path: <usb-storage+bncBCQPF57GUQHBBHNB3LEQMGQENOJ3YEI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x246.google.com (mail-oi1-x246.google.com [IPv6:2607:f8b0:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E76CAC8AA
	for <lists+usb-storage@lfdr.de>; Mon, 08 Dec 2025 09:47:28 +0100 (CET)
Received: by mail-oi1-x246.google.com with SMTP id 5614622812f47-4512e9f2f82sf5243817b6e.3
        for <lists+usb-storage@lfdr.de>; Mon, 08 Dec 2025 00:47:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1765183647; cv=pass;
        d=google.com; s=arc-20240605;
        b=Z8ta5zekQdMMYXXPLNP+LY2OKbZJR7nfdLiT5DXCoA1JTbBpUg43Ho/YNN8bEhLzZR
         9zIpQybSHVQ/45Y7XWEDxINNcA2sRQNfvf1wuzPyPIPoGnY9WYU4AGcGXBBfqZxdAwXp
         J4Dw4u3yZlMVZ7CTXW6lmh5Jn3sm1M7SbgV3KTA8QdQBC9TdlZAC9cJ8+YbAMpOU2fK8
         8TRALedXjSC6VYDsIg/RX+6oJCSUF26pRjrbDBIPk6DeShFOWk97vrLyVo+azg841ugY
         i8kS+avVZqI3YQeaIYwGxyIQn7+VWN8D74srMDJrGRQ7bD5G6D6n0OWwgXbK+yTJIQbL
         kLJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=8aUz95w9PhVkE+fIOsNNcC8pZgG6TDXbhVWOG5iOOqY=;
        fh=cnFjv6zV4AVWfJ8IB5p/Zy5cQTMPX1iMA2Mc0FbiJk0=;
        b=DPvnPRL7IA5pb0o7CCF3AenQuBDjMhrm7gL9HOqs4+TOAETOqCj6CuTSQPPSOmLk37
         Brqx+7rco0aEEfIjZpKR8Evums4g48UIHX9n6bqBRZtxOHBm9ZSsQ/PF1iFUjPFRO/Qa
         jpGCYLg2rWzNERnUpbe99V/nV9VbL6olOJQSnljuPqhy4qEuwTtFPDLwS3Wcc7F7fyXY
         VUDJU4IBujQEkdsTImWXH9d/9sRbKV9OzBnldGrcQiuJBYpThiXlkNhRKbUBOxJxgSMO
         wjJZgZaZHFxg00obMO5V7ZfTPZWgvqLb12qauQ05JqKUZjpfkBS58dWYkCg0eSOzMh66
         CehQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3nja2aqkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) smtp.mailfrom=3nJA2aQkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1765183647; x=1765788447; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:date:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=8aUz95w9PhVkE+fIOsNNcC8pZgG6TDXbhVWOG5iOOqY=;
        b=Bw1+1N+TmNNxRA0v6lqtlLNL+5S2vTXG72CxAeFoDZD5n+gWVmsutfTYecgnmJzoRn
         3/9S4b0+0ONa3qLyVZ3XpZ9SifW2OE1jn4Uc2iqx8p37NsGGAf031nJI6z0/naMe/FG8
         xW6bYG7jObQxYw7REYKQN458ZRqlLzf9NV4hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765183647; x=1765788447;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:date:mime-version:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8aUz95w9PhVkE+fIOsNNcC8pZgG6TDXbhVWOG5iOOqY=;
        b=EMVM0h8SNpHXis4yick0z16ok1CBbgrwzwvAh500BxbwzrZVqCa2RiJ/DVbqK6/lkM
         Fk6MjHdPxitUhEK84qTZ3qR0I6bLOYftgk2aa8h2HfH7lJsWhsHUCqqPs0JOb1Xdsu6j
         Opy41Ll+GqrZ5sVMbrZVK1Pr4zW65XFgbeHzYencsj120HcNnMJkutAH5BYMVXDKez/7
         0D+TAHw3WfExibM4ocdVKlKLEJQ6otNVG1IF/ATD0s6FxBC0oTFARlClc+Cwp/Tr3/x1
         u12cpqRXfhNYcjhnb19ssY+feR8YsgYhqDw87Ilj+ZnMGHFLeygh1Fy3XcoG0pamYpFu
         /8NQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVydNiPNv+IriIdScpSI7HIP9HLYy5kF+A2uZCTOh6LL3pOW87HZpEsW3VBuO4q90JKOd5+cw==@lfdr.de
X-Gm-Message-State: AOJu0Yw9o99SKZ292sRJUSy9ovN1CtQ5sWUt/18D1Zgsk1M5wJH+aRAn
	lM5BFdSyaWx2I/OyjQeuEq+22QyWv7WjfRxuO0tipyJemzNvqSKJ3piSAivvAXxsqaY=
X-Google-Smtp-Source: AGHT+IEZEu1eZe/nTxkAP1Bg4NERk1fKcVAputJjpoeM59Ko2PrCdukBXbxp1QhxwEtSAGpMs9LZ+Q==
X-Received: by 2002:a05:6870:239e:b0:3f5:4172:26 with SMTP id 586e51a60fabf-3f5440cb2a3mr3133217fac.59.1765183646093;
        Mon, 08 Dec 2025 00:47:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="AWVwgWar0brPSQ0Vna0M9cNEaHFNRw6Tuh+Vh1OezO1sJak2aw=="
Received: by 2002:a05:6870:d62a:b0:3ec:7947:3f27 with SMTP id
 586e51a60fabf-3f508b140fdls2092831fac.0.-pod-prod-01-us; Mon, 08 Dec 2025
 00:47:25 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVN9Xm7NyJgJZwI+rqBMDmU8xBPXcI+Flvf6GxBllp1CxskMuiTMtbGDIJdgtkSYpX2A65K4CJj9gst7A==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6808:199a:b0:450:b3ec:c154 with SMTP id 5614622812f47-4539df601fbmr2776875b6e.25.1765183645121;
        Mon, 08 Dec 2025 00:47:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1765183645; cv=none;
        d=google.com; s=arc-20240605;
        b=IhK1c7ThpFdDWzwMegeaNEa0/6zd1ijthZcbmbE93suj54UHCzqk63V3cMUoD2z5bH
         MnMOV8cfvQgMwra7b0qbBnCEPLFZcM5ewfFSYBqB2O+GQOAbUoKSxd4Hp36Bn0T7AUMX
         NMdidRbJRweRE+y5ssXUS0dToVoGzHzjhghrQZwy1zBFMDGmBQMrFUu/K6bug0mNpoTD
         4V3kciJpRVZUPiPqFloUlT6I+50/+yXU1kQbia63wNevxWrPk8FoFb8IIt0A9/oWiQyj
         0WXvmdU312Ul/+MPQdAxn6ugXX/bMkZn3oWpKCfUmBEGCX6NDDoRM8qh7nRCGI7dl4Fb
         iZyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:from:subject:message-id:date:mime-version;
        bh=DGCYqsNkvZTyehNsH8OtSaP7Q2LaD7JciDZVUEAed3Y=;
        fh=uH5mqBY4UjTkju4jhnNakEE9ecHD+cjHHqrwdvzhNSI=;
        b=ZvYc1iOoX9+BQRnitGQiCKi3oXcO+gZpJ9UnM9Hr4LmXKBLhUnsnPGa++vL+9StJe5
         Asl32ShviCzDKbk7PHQ2kMpRoIUfVeizKOiksP9hi/ALhtLOKfTnQzAAXWp4TiGRYi9r
         F+7+Zwe4ingEoQQ/21/lJ5m5mE/TiUMkYzN4U//1LSSmf2gmquhRv+AqJYXVYobIJz4R
         F11/yZGKcHwOz1BH9rwwgFXrgCMtq0ZhGeanhP/msN3B5Zf4eGn3vdCZvKTZtTdW5k4f
         Dl7xqWeU8ro51QoKSjfEZJBGpbGl7goDA8AyU8DpnjndB0hJ5JuBA8xwJrM61w05Fj9W
         H9Xw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3nja2aqkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) smtp.mailfrom=3nJA2aQkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f77.google.com (mail-sor-f77.google.com. [209.85.220.77])
        by mx.google.com with SMTPS id 5614622812f47-4537f89e0b6sor3579055b6e.4.2025.12.08.00.47.25
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 08 Dec 2025 00:47:25 -0800 (PST)
Received-SPF: pass (google.com: domain of 3nja2aqkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) client-ip=209.85.220.77;
X-Forwarded-Encrypted: i=1; AJvYcCUllo3ZS/iIZZpogJC4wRtiAB10K0qyYEcL9h1eFwNo/+VNIz8VzP8sU+N6af3t2qAgsps5KZnLYpzb6w==@lists.one-eyed-alien.net
MIME-Version: 1.0
X-Received: by 2002:a05:6820:2293:b0:657:70af:4e21 with SMTP id
 006d021491bc7-6599a8c3813mr3363688eaf.8.1765183644789; Mon, 08 Dec 2025
 00:47:24 -0800 (PST)
Date: Mon, 08 Dec 2025 00:47:24 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <6936909c.a70a0220.38f243.0099.GAE@google.com>
Subject: [usb-storage] [syzbot] [usb-storage?] WARNING in usb_stor_msg_common
From: syzbot <syzbot+4e26f67fa7f5bb2dafcc@syzkaller.appspotmail.com>
To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3nja2aqkbaocbhitjuunajyyrm.pxxpundbnalxwcnwc.lxv@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.77 as permitted sender) smtp.mailfrom=3nJA2aQkbAOcbhiTJUUNaJYYRM.PXXPUNdbNaLXWcNWc.LXV@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hello,

syzbot found the following issue on:

HEAD commit:    bc04acf4aeca Add linux-next specific files for 20251204
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=10e6bcc2580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b9f785244b836412
dashboard link: https://syzkaller.appspot.com/bug?extid=4e26f67fa7f5bb2dafcc
compiler:       Debian clang version 20.1.8 (++20250708063551+0c9f909b7976-1~exp1~20250708183702.136), Debian LLD 20.1.8
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=110bb01a580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/f2d7ef7b5470/disk-bc04acf4.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/ee299a9cd371/vmlinux-bc04acf4.xz
kernel image: https://storage.googleapis.com/syzbot-assets/ed3cdf46e7b2/bzImage-bc04acf4.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+4e26f67fa7f5bb2dafcc@syzkaller.appspotmail.com

------------[ cut here ]------------
URB ffff888144371a00 submitted while active
WARNING: drivers/usb/core/urb.c:380 at 0x0, CPU#1: usb-storage/5993
Modules linked in:
CPU: 1 UID: 0 PID: 5993 Comm: usb-storage Not tainted syzkaller #0 PREEMPT(full) 
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 10/25/2025
RIP: 0010:usb_submit_urb+0x7e/0x18d0 drivers/usb/core/urb.c:380
Code: 89 f0 48 c1 e8 03 42 80 3c 38 00 74 08 4c 89 f7 e8 87 b4 1f fb 49 83 3e 00 74 40 e8 fc 5f b9 fa 48 8d 3d 15 c4 c7 08 48 89 de <67> 48 0f b9 3a b8 f0 ff ff ff eb 11 e8 e1 5f b9 fa eb 05 e8 da 5f
RSP: 0018:ffffc900034672e0 EFLAGS: 00010293
RAX: ffffffff87089394 RBX: ffff888144371a00 RCX: ffff88807801bd00
RDX: 0000000000000000 RSI: ffff888144371a00 RDI: ffffffff8fd057b0
RBP: ffffc900034674b8 R08: 0000000000000002 R09: 0000000000000000
R10: ffffc900034673e0 R11: fffff5200068ce87 R12: 0000000000000c00
R13: ffff8880314b0fc8 R14: ffff888144371a08 R15: dffffc0000000000
FS:  0000000000000000(0000) GS:ffff888125af0000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007ffff7d5bdc8 CR3: 000000007291a000 CR4: 00000000003526f0
Call Trace:
 <TASK>
 usb_stor_msg_common+0x27c/0x4b0 drivers/usb/storage/transport.c:143
 usb_stor_bulk_transfer_buf+0x151/0x2a0 drivers/usb/storage/transport.c:395
 ene_send_scsi_cmd+0x10d/0x5f0 drivers/usb/storage/ene_ub6250.c:502
 ene_get_card_type drivers/usb/storage/ene_ub6250.c:1843 [inline]
 ene_init+0x14f/0x380 drivers/usb/storage/ene_ub6250.c:2197
 ene_transport+0x39b6/0x4660 drivers/usb/storage/ene_ub6250.c:2310
 usb_stor_invoke_transport+0x10a/0x19c0 drivers/usb/storage/transport.c:611
 usb_stor_control_thread+0x450/0x8e0 drivers/usb/storage/usb.c:462
 kthread+0x711/0x8a0 kernel/kthread.c:463
 ret_from_fork+0x599/0xb30 arch/x86/kernel/process.c:158
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:246
 </TASK>
----------------
Code disassembly (best guess):
   0:	89 f0                	mov    %esi,%eax
   2:	48 c1 e8 03          	shr    $0x3,%rax
   6:	42 80 3c 38 00       	cmpb   $0x0,(%rax,%r15,1)
   b:	74 08                	je     0x15
   d:	4c 89 f7             	mov    %r14,%rdi
  10:	e8 87 b4 1f fb       	call   0xfb1fb49c
  15:	49 83 3e 00          	cmpq   $0x0,(%r14)
  19:	74 40                	je     0x5b
  1b:	e8 fc 5f b9 fa       	call   0xfab9601c
  20:	48 8d 3d 15 c4 c7 08 	lea    0x8c7c415(%rip),%rdi        # 0x8c7c43c
  27:	48 89 de             	mov    %rbx,%rsi
* 2a:	67 48 0f b9 3a       	ud1    (%edx),%rdi <-- trapping instruction
  2f:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
  34:	eb 11                	jmp    0x47
  36:	e8 e1 5f b9 fa       	call   0xfab9601c
  3b:	eb 05                	jmp    0x42
  3d:	e8                   	.byte 0xe8
  3e:	da                   	.byte 0xda
  3f:	5f                   	pop    %rdi


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want syzbot to run the reproducer, reply with:
#syz test: git://repo/address.git branch-or-commit-hash
If you attach or paste a git patch, syzbot will apply it before testing.

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6936909c.a70a0220.38f243.0099.GAE%40google.com.
