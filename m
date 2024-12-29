Return-Path: <usb-storage+bncBCQPF57GUQHBBYU7YS5QMGQEU4S37AI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id F24279FDE13
	for <lists+usb-storage@lfdr.de>; Sun, 29 Dec 2024 10:01:23 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3ac98b49e4dsf78181915ab.1
        for <lists+usb-storage@lfdr.de>; Sun, 29 Dec 2024 01:01:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735462882; cv=pass;
        d=google.com; s=arc-20240605;
        b=Jr3QR0aLHCPaZob7ilYcOQvhEifzbv4n2kfrnp4BRHQekAkBl8U0bNbqbvPs2fspOq
         lZNBDE/kdnbMI7lVWaLNfiWTGOAxcBTjNzNL7iTrrzcZJ10Ux3ohiqLw8cFmzfpwJsvW
         YRvDFXhuND8rdG9VtAAWcoc3+vb4Vqh5y0w6yAnUYdXqeC5r+d9sZXeM4JwCOLdsjozt
         A4TWtMWTmnv4ACBdsfc9HmvFjmfl1gvcbUBAIWJSn7cx8oWeMMV9661i88X+ZXMRnLDO
         60uOJtNY5Sf5S+sZx0HP0Q+aJg5thTCSlGSi9Xs1T/5epwdgk/KKynzeajfUfQKSTsTG
         4zJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=4RCVmACHozTpZwQiMVmJdBz8VcUixHfjyKMZUhODW1I=;
        fh=l27ql9e7L0I3aPAO7F6Baf2m8DSjrq+RB27R3NANpfE=;
        b=Ij2M3XXdWxG/Hm9lMLGg2B868QOxR5F+xA1XoQt/XNjX5Dxag5gXE6Fce2hVTz7Pyw
         A+yMyKDPMH82qyb1qMfBKq/Ii0AxxG1WNL3Jp8DVk6SpesFsEZHkPDjH+DjCoqCcdaNd
         w4j0WX9ihFqaDyHtQ1CxESa4I1llhKQ1JJHB4VOSzqBewC5BN9mBdawEYAhql46BunI+
         zdim1v79Lqo/aszNk+iH+UtoXQZh/VDBbX67o7svMxo7Rk9xcmIDN6fwLFr9XzIivDST
         G9VepDcy87RXfvFGFyhyBPdmNSuv+FnfpTjVxjM+Qf9gbfBhl3ydFI9CNj8nvuc7On1T
         4MAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 34q9xzwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) smtp.mailfrom=34Q9xZwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1735462882; x=1736067682; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:date:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=4RCVmACHozTpZwQiMVmJdBz8VcUixHfjyKMZUhODW1I=;
        b=dBY25jveahKt+vvkWoHeFygxV1lONhbqIoxpZqZ/+YlXWJlSAHnXwy7O4eda6X36Cs
         eGzlhTUvjT6Q0p71WP/o6EmCHD7NHCEpJ5SstPMhX8bpU/WIQAN/Od+EgRT2nRKJTnVP
         zqXfOC0LLgDKCJ7jxIrKjsdo9hfnuoooORZho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735462882; x=1736067682;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:date:mime-version:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4RCVmACHozTpZwQiMVmJdBz8VcUixHfjyKMZUhODW1I=;
        b=MA4OaoKUlMpH4mlofPa/rIUsDCfUL/+QnXyJfVLf9AWOYCCWnRDGQlHjXvCgNd/Qau
         Q25G+Syt1m5FctgUu9RKJe3ghNSclnlai4mwcQxkpAqAaJ1BEhsOScWHWAyLLIaQDBB6
         /6RL4iWcvdwm51R6B2wxu4VQy6KKfaXFKE63ROQwvDfF7qtAt5tdnRXp89Ubn+ffkbRU
         J97mao04j7d+EqyHUDkDI6GZLLX+j34BaxXJZmfi5oJ4cX0BLij5IdDQsGQVnrBFIDj9
         5Ufbnf4vJxLMczxYlCe/ZupMOvk6bQBBH5thDYLYsOSJM+GIdlGfhSpQw8p7TvuoPZkK
         NZQQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXrIyG4igC+xTNDJWkbkOUlUlzRjhhFHeaVFexjo1b68+xqQkUY+yL0TUYs/BXXu1ZAk5m9oA==@lfdr.de
X-Gm-Message-State: AOJu0YzNF6B2LIll9kCyFAObBSyJgXjudYz+XCX62Q/zURB5zPIBUOK5
	g0b0PERwRTmXu5xdimV6azg0LbDEXTmS5r3PWw2009WwwXDadESSXaWR1x5xZ5U=
X-Google-Smtp-Source: AGHT+IEZrwfawHitixOzNvznTOgU3HymccDiJkPvLxGLTEV9w+Ey52+sASqxQvG4fMXt+bHvowaUTQ==
X-Received: by 2002:a05:6e02:310c:b0:3a7:8cdd:c0d2 with SMTP id e9e14a558f8ab-3c2cc083da3mr254010945ab.0.1735462882584;
        Sun, 29 Dec 2024 01:01:22 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1f86:b0:3a8:1477:b10a with SMTP id
 e9e14a558f8ab-3c0206d688als13874295ab.0.-pod-prod-06-us; Sun, 29 Dec 2024
 01:01:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWSwpPQpYlJjLojUCyFYBOeqWi9XN11JLj3sJBDyrtqmvBq+LV1AffEccyKoSvvM/EOx7bMsObBbjCzIA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6602:2c89:b0:844:debf:23dd with SMTP id ca18e2360f4ac-8499e6c2c6dmr3206067739f.14.1735462881378;
        Sun, 29 Dec 2024 01:01:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735462881; cv=none;
        d=google.com; s=arc-20240605;
        b=UnshJC36XT9r21/4Ykyq+UIp5i0Dd8tkPrCUyt5opzdQm64yss0pT4epLLOuOweNWV
         I9W6+uFiz4hpS9UF4wUUks5OZZqcTNLg5lpFisivcZjUyP5/2w8nmD4OZlD/v3DkZqO1
         xjdsSGTJ4S1OKeRPDSODKBTKPLooIfiYKCE4XUPZH2We5jCRm1r8XJ8nZAJCZm3YRY/G
         UN76bL8vGc7LfxcqPoAXy8l4j4Ke4B6QJjKaOYLK/lfRRCfaetLfHiSM/QcYon8zYNgL
         cIdL9BigosxsHzWowiWZ73v0rc4Dcstu11a40c9O+EQZ3Fm7ZjTdQSO4H79rYexaLo2j
         O4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:from:subject:message-id:date:mime-version;
        bh=nXc1lFx82qGnJwsxsA/KUZNzRqzwCOmC8BjpY0CbMd8=;
        fh=z0ERSUpDvq4ECOqCkHjUnkkBDjIJBlrbdw6tuJqCbGg=;
        b=RnSHhB21467t/9vMnOeruCEYYcMQkJ2ezbnzI7kd9W/s9eFFH3g8rNg97WU/jjIO25
         lx/xxp3PGan/bJxeiMDZuPQ9Lu4VVGjGAohJrLHZ0k7Qm8zfvL8T40os7EczNdcmGBJ0
         FRd+20nKJxuVjE8LGZACiPxUAXABh50DEpk/VEUUOb12wGU7AmOJDK92mcviLzo3Ypds
         Q8x3kLfkPMbtppSr94xPZljSVlLYvc9b0IjBJ7FLXt7L6STnbahiPqbCA+KzxLa0FQ3T
         UC/Wmr7aKstNUd9ZSh0P6Kou1UkV6eekRc3oXCNDrGkmXuta04o8eur1XYRIm58WZVka
         b50g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 34q9xzwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) smtp.mailfrom=34Q9xZwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f77.google.com (mail-sor-f77.google.com. [209.85.220.77])
        by mx.google.com with SMTPS id 8926c6da1cb9f-4e68be19744sor5878023173.0.2024.12.29.01.01.21
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sun, 29 Dec 2024 01:01:21 -0800 (PST)
Received-SPF: pass (google.com: domain of 34q9xzwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.77 as permitted sender) client-ip=209.85.220.77;
X-Forwarded-Encrypted: i=1; AJvYcCWMrg930CJW1rA1M1lmA7IRPMyPvESPwLsf98uYkOFjx2RBUGS7ksPB3oop2PlCyb8KkXqH+ZiZmgAnuA==@lists.one-eyed-alien.net
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:16cd:b0:3a7:8720:9de8 with SMTP id
 e9e14a558f8ab-3c2d14d182emr243894335ab.5.1735462881085; Sun, 29 Dec 2024
 01:01:21 -0800 (PST)
Date: Sun, 29 Dec 2024 01:01:21 -0800
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <67710fe1.050a0220.226966.00be.GAE@google.com>
Subject: [usb-storage] [syzbot] [usb-storage?] WARNING in usb_stor_msg_common/usb_submit_urb
From: syzbot <syzbot+73c662df6e55838c6ac6@syzkaller.appspotmail.com>
To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 34q9xzwkbaag067sittmzixxql.owwotm20mzkwv1mv1.kwu@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.77 as permitted sender) smtp.mailfrom=34Q9xZwkbAAg067sittmzixxql.owwotm20mzkwv1mv1.kwu@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

HEAD commit:    d7123c77dc60 usb: gadget: f_tcm: Refactor goto check_condi..
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
console output: https://syzkaller.appspot.com/x/log.txt?x=171080b0580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=c7df994a0b7c30a9
dashboard link: https://syzkaller.appspot.com/bug?extid=73c662df6e55838c6ac6
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1558f4c4580000

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/ccb59f24626e/disk-d7123c77.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/b51b5c87b9dc/vmlinux-d7123c77.xz
kernel image: https://storage.googleapis.com/syzbot-assets/f66bf96bc8cc/bzImage-d7123c77.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+73c662df6e55838c6ac6@syzkaller.appspotmail.com

------------[ cut here ]------------
URB ffff888112d14800 submitted while active
WARNING: CPU: 1 PID: 3987 at drivers/usb/core/urb.c:379 usb_submit_urb+0x14da/0x1730 drivers/usb/core/urb.c:379
Modules linked in:
CPU: 1 UID: 0 PID: 3987 Comm: usb-storage Not tainted 6.13.0-rc4-syzkaller-00068-gd7123c77dc60 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
RIP: 0010:usb_submit_urb+0x14da/0x1730 drivers/usb/core/urb.c:379
Code: fe eb cb bb fe ff ff ff e9 c1 f3 ff ff e8 8e e1 f1 fc c6 05 c9 fa de 05 01 90 48 c7 c7 e0 c6 a1 87 48 89 de e8 27 dc b5 fc 90 <0f> 0b 90 90 e9 b6 fe ff ff bb f8 ff ff ff e9 91 f3 ff ff 48 89 ef
RSP: 0018:ffffc90001fff758 EFLAGS: 00010282
RAX: 0000000000000000 RBX: ffff888112d14800 RCX: ffffffff811f67f9
RDX: ffff8881115bd7c0 RSI: ffffffff811f6806 RDI: 0000000000000001
RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000000
R10: 0000000000000001 R11: 0000000000000001 R12: ffff888112d14800
R13: ffff88812ec3cd50 R14: ffffc90001fff808 R15: ffff88812ec3cdd8
FS:  0000000000000000(0000) GS:ffff8881f5900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000555d1dbc3838 CR3: 0000000113b3e000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <TASK>
 usb_stor_msg_common+0x248/0x570 drivers/usb/storage/transport.c:143
 usb_stor_bulk_transfer_buf+0x17c/0x410 drivers/usb/storage/transport.c:395
 ene_send_scsi_cmd+0x131/0x610 drivers/usb/storage/ene_ub6250.c:502
 ene_init drivers/usb/storage/ene_ub6250.c:2197 [inline]
 ene_transport+0x13f6/0x37e0 drivers/usb/storage/ene_ub6250.c:2310
 usb_stor_invoke_transport+0xef/0x1580 drivers/usb/storage/transport.c:611
 usb_stor_control_thread+0x5e9/0xac0 drivers/usb/storage/usb.c:462
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>


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
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/67710fe1.050a0220.226966.00be.GAE%40google.com.
