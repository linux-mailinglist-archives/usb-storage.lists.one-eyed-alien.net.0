Return-Path: <usb-storage+bncBCO57VGYQAOBB2VU53WAKGQEXZHKHBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ot1-x347.google.com (mail-ot1-x347.google.com [IPv6:2607:f8b0:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E632CED22
	for <lists+usb-storage@lfdr.de>; Mon,  7 Oct 2019 22:04:59 +0200 (CEST)
Received: by mail-ot1-x347.google.com with SMTP id t7sf6407726otm.4
        for <lists+usb-storage@lfdr.de>; Mon, 07 Oct 2019 13:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570478698; cv=pass;
        d=google.com; s=arc-20160816;
        b=INmCOwaqHjB9MYaHQTxWnU7jQvYUySUMwsUqMhDoXJCYC4NamwVCWX+KPNZtIUyQA5
         jU7aipXJH4fjLEG9pSWNT8AMkxF8COefkO5ToIlmB5+NXlkqgvkMV13wo9E04dha5EV5
         Z+EDGfdWqy3cK7fnvs9/lxalo0No6I9Kc6Lznts/AnT5SQuYi4TgnzuVDwBl2a8h+L8T
         igfnl9EDlpI1Wj/Mk6ZOCgN+M2kJYIGxrhFCfYMUD1vQpnJoDydLvdzR7+Z7h6nIwoI4
         WrVoqnitAtncVh1dMuTGc6+6BPRgPZpRUJycKe90m54YT3av44eP0VPdsBjfNmBP3Ki8
         HzgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=TW8h7bK9sF5D3MZWGJo3Z4cscAqzS/01RZCFZqaFYqo=;
        b=j94K/By9v/T1PeK/suPpenVOfc7sAue1UPvssfWLjhZviXWOXnFVQrUcf3aF+pMvtV
         rvh6tqakOoS/U5Kb7nHxUkmLfDv9cr2BAVkInu3/70zzX2c7oPV40hGOv5p/n+AB+O+P
         8vu12ctT9jOCi8fcB0PPWp+cFlAcLnTX7y+uMzSbV6yDOp56xDeCm0V7e/Uect26eh2P
         JJYpBO0bwN6GaSE+1pwSGPJDlZ4O/JReTJTS7S1BXo+HFKSDONwo6DIAb3ZGVOYPVGdP
         PgZoF3340X0YGVeFrsCjDOHzLfDxGT/lFeRv3nwNiByy5OChIkTbSF4iZrTKQMk6Vr66
         uMPg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3w5sbxqkbaoqyefqgrrkxgvvoj.muumrkaykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3W5SbXQkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TW8h7bK9sF5D3MZWGJo3Z4cscAqzS/01RZCFZqaFYqo=;
        b=dJ21xI9gsW2nmQ2LWZwC90gC2mkbPqnsr5QKU5ID8RYm30NNIHkC/1tqPucomuDI13
         dV8tihGvnsyBw4Y8HALAH9Dp/Wnm+6m1wzxkdjO9nTLD1MGT3tkduThpFLrnxjJ6nbRT
         KIDSGK4fyGKx1sQTuGZ8NCGra5c2+DbhtMTys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:message-id:subject:from
         :to:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TW8h7bK9sF5D3MZWGJo3Z4cscAqzS/01RZCFZqaFYqo=;
        b=P0DwbyItMmyWcSHJ/EqioPbvshTXDjRfWUtWxcQe7WCexQcS6cHxMS6InJYTwmczOh
         9k75ZS+gXPFOXkjnyFHuheUNvMNDW1knB00dBzXDb/puhiSnQFQXNTxW+k5DzZYZTIGl
         7m/bO4KBe15LP1bu/Ml90OuUHkxW8b0yMuHCpmSZVYZtXZJDiMVRYFqh6ewQg57llwc2
         WJFFqwWTYfkHwwWd+fsdCQ8DDe6fziW0PB6K4Zbznkonw8rak4M8p+4wrrh+llWUvi0O
         LH/IGzCpF5PSclweJm2X64po/pBpMM1xWyvtclr8aFgM/4zH0QNirTaEWnlbNw59evTz
         4haQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAWkoYrrZ5pn6KRSlwgsiRqL8TNGsXvIKk0crrR2dlk81GHsCm4e
	J3HeTjsrazbVUv0Ik/1k39HyIA==
X-Google-Smtp-Source: APXvYqz5cVETdf87N8BajUwWv2JFzKwN5JaUmJAqwArDLGD9HNE9ah+4I48Pg6A/vqWKxJYMYF6tVQ==
X-Received: by 2002:a9d:6a96:: with SMTP id l22mr5522139otq.129.1570478698406;
        Mon, 07 Oct 2019 13:04:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:bd44:: with SMTP id n65ls188505oif.6.gmail; Mon, 07 Oct
 2019 13:04:58 -0700 (PDT)
X-Received: by 2002:aca:51c7:: with SMTP id f190mr886282oib.69.1570478698044;
        Mon, 07 Oct 2019 13:04:58 -0700 (PDT)
Received: by 2002:aca:df04:0:0:0:0:0 with SMTP id w4msoig;
        Mon, 7 Oct 2019 12:39:07 -0700 (PDT)
X-Received: by 2002:a92:98d3:: with SMTP id a80mr32223938ill.167.1570477147498;
        Mon, 07 Oct 2019 12:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570477147; cv=none;
        d=google.com; s=arc-20160816;
        b=RR8x/OtnaqHcF8ouvP47LamN2AjewIGSMPNZQziNlLr+9D6vLuZ4iJwJ6JsAar+Wx0
         s3sgoXO8tdD/SiOnaGKb5KGWgKfv4d6mTQqFC0EaJsiZ3t5PY+gpZxPt5NmYnVvGwlRS
         GF6FukVEs59HwFrs91xBwnpoEcyArDwjCKc5cVtp0nqqovWo8b68KB7NpwDcMDn/SBSs
         bkBwhJmhkjF6uwfDCH+CG5snGVCh5+9KVyPybTYNwCVMkCCc9eTKo45diQNMbb2q35mG
         oFalg3ZWu93w+b/YU+ZHPKl1tTNSvamKnwK2/M12etqwqubkDPTtglnQn/ZcLnHGNUbN
         P8Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:date:mime-version;
        bh=kKDb/JioBJlC3ZSH7Ra1D6u0wPhnpnLccidK2R6RBOc=;
        b=JmrX4NbqgCBGQWiuhL6zOEWb+F66/jeIf0nZqnwX6+1cIQYlNIgmwe8ClVnJiXXlt/
         7hlEywDdVQEdtiNebyVIGdoqA5sSDyQSVF5Dqg8u2uWBhiIh+gG8lO//06NKa8nAjero
         fcX9hF30A9g7zrcZox5kMRLYPTNCkY35+gg3BWZGbaeX0cG53qH+Z4YWegHF+eQkUo2c
         nt+CuBcyl5aYr6x1FyJTaZb/4xGe8Bq+ORkwYt9AZYsI/1UtAWf8SPhigGS839GvPiJ+
         okckw0hpIJxX1ifYdnHgd0I9aU8Y017N0N71/TWwwv/GNWNK67VOF2FPaGn3NAxfagm0
         IFuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3w5sbxqkbaoqyefqgrrkxgvvoj.muumrkaykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3W5SbXQkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id w6sor9587501ilg.84.2019.10.07.12.39.07
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 07 Oct 2019 12:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3w5sbxqkbaoqyefqgrrkxgvvoj.muumrkaykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a92:5855:: with SMTP id m82mr31630600ilb.136.1570477147233;
 Mon, 07 Oct 2019 12:39:07 -0700 (PDT)
Date: Mon, 07 Oct 2019 12:39:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000007d25ff059457342d@google.com>
Subject: [usb-storage] KMSAN: uninit-value in alauda_check_media
From: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>
To: glider@google.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	stern@rowland.harvard.edu, syzkaller-bugs@googlegroups.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzkaller@appid.googleusercontent.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3w5sbxqkbaoqyefqgrrkxgvvoj.muumrkaykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3W5SbXQkbAOQYefQGRRKXGVVOJ.MUUMRKaYKXIUTZKTZ.IUS@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

syzbot found the following crash on:

HEAD commit:    1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with kmsan_i..
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=1204cc63600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f03c659d0830ab8d
dashboard link: https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
80fee25776c2fb61e74c1ecb1a523375c2500b69)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=123c860d600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=110631b7600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com

=====================================================
BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0  
drivers/usb/storage/alauda.c:1137
CPU: 0 PID: 12279 Comm: usb-storage Not tainted 5.3.0-rc7+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
  __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
  alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
  alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
  usb_stor_invoke_transport+0xf5/0x27e0 drivers/usb/storage/transport.c:606
  usb_stor_transparent_scsi_command+0x5d/0x70  
drivers/usb/storage/protocol.c:108
  usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
  kthread+0x4b5/0x4f0 kernel/kthread.c:256
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355

Local variable description: ----status@alauda_check_media
Variable was created at:
  alauda_check_media+0x8e/0x3310 drivers/usb/storage/alauda.c:454
  alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
=====================================================
Kernel panic - not syncing: panic_on_warn set ...
CPU: 0 PID: 12279 Comm: usb-storage Tainted: G    B             5.3.0-rc7+  
#0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  panic+0x3c9/0xc1e kernel/panic.c:219
  kmsan_report+0x2a2/0x2b0 mm/kmsan/kmsan_report.c:131
  __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
  alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
  alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
  usb_stor_invoke_transport+0xf5/0x27e0 drivers/usb/storage/transport.c:606
  usb_stor_transparent_scsi_command+0x5d/0x70  
drivers/usb/storage/protocol.c:108
  usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
  kthread+0x4b5/0x4f0 kernel/kthread.c:256
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0000000000007d25ff059457342d%40google.com.
