Return-Path: <usb-storage+bncBCMN5OORTILBBX543LYQKGQEOZHGVYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9E014FC88
	for <lists+usb-storage@lfdr.de>; Sun,  2 Feb 2020 11:03:13 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id a6sf7406592qkl.7
        for <lists+usb-storage@lfdr.de>; Sun, 02 Feb 2020 02:03:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580637792; cv=pass;
        d=google.com; s=arc-20160816;
        b=pRp808ZMfbMtNjmV9VUcRPRP4kwTQwBNMclb1i+Pl2PhswoFaU0XpszSwHGT5CHu2r
         b67W/2P26KOGRqudSW7hqQcuDZNSpgsXj1s3Mu9MJxO7fZ1MoK3HQrUJBYBmG8E6N8aQ
         6osH1qSOv1GcHT/LJdIZ8dS6KD4KkXXmGjyAOJK0QmcJWXN1wsD8snI+q/zSkSVi7SAM
         EbcsdRZ96e6GmL0JWs4V2Sr6YXWbWabJO2YEfW02AQ+T8lIZFuqhlnVyxjptHB2K+hXm
         JO3RqhC2v2wGH8MnwmhOtCfNXcWw7uHc4pVTaAhlsUYKwK9P4bgDVFgkxKZoLX/chB+E
         1Dtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BbXY97w4A4eZvoA5ZMWfUyqBjQGpFO+j0kYV2BZKuVE=;
        b=ZgRaj8aDzc6DMMHwlEjklJm+PPt3+1t6JRSmgCZXPkVytvep3oanr+V+BBcTu+Foiw
         cdT75Ub36L8jk6pEPv9sJkFVluGDmQtYM2iVhn1fwB+jIvhXLrgBcVFEC238Mzau8PhX
         9Qpz9s8CF4MpRuS3+jWLmlrAMYKDWBUmNFVbo3kM4ftdADvmhuySHojCCBtypEiGiy0d
         Fc2RvazYS4MEeovGvaiKKTsxExTIuFUnQbGNmyul72MYZp44PP2RBTA4ne+jc9Jb7wTM
         iRFQhDTtzJd2kIvp377Y7nO6tvdIRVDwuWOB64SiO0BeuQvVfHCFVw6hbrJ+0x6uxWwn
         2O1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=aT2gESsx;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BbXY97w4A4eZvoA5ZMWfUyqBjQGpFO+j0kYV2BZKuVE=;
        b=FyNxnUL7gUqsA7E7ul0LGM939aA5zNRxSrzBH5VQam38FLA9c6RhYzmNQQKRewC0dm
         ZCwkAC/9illDHWuAFaEST1RRIMz+iJHM10qPGp6ObDNY5UQx4tlxVw2zt1FqwUbx7zy/
         6S4Yjh/v38m4kKhvVOZao1EynN+QIXoTx52bI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BbXY97w4A4eZvoA5ZMWfUyqBjQGpFO+j0kYV2BZKuVE=;
        b=aSaYpOqy3dueU3B644AQseCrksa+IgfKuV4s2VGSot1sO+92LGjokFllgep4rwOTQy
         UEcdvbFeszso7/Fv4qbIc8AaWOebcOefZuO2yExe7Rf5ci9+9a3EqTGcXcNaBURZRCB8
         aw8fTOzMkmqS66OJQL711vhMoUbK7gJIB8V5gSxSZ3B47FOP1/OirL/09G1UfXngaGsi
         wI4Caqv2NCh2BoRRKS6IYzeJyxrWGzKKOtimFnZpMfubcb3eDqBVEFkUBKW+ExWtuxEx
         dhbiT/St8hhX2KBCi/oLfwuQwnuDIex2k23i1FCnEu7Yo1agTP6xIuY5JYy9QzZ5JxKv
         SAxg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUTRAVXzbf3gWSyZiJaQTL3j9jT+Q4F2sPbFW89Bc4WK+fjjUKV
	aQDm7kk/Cvh9Rt3P1ws76rtW9Q==
X-Google-Smtp-Source: APXvYqxK42+ICTh0sJ+nw8xSqyD8jaFQ9ad9z0jmoe0ekdgQiYv3zkOOOsD2RgRH28QouRMtcjcf0g==
X-Received: by 2002:a37:a813:: with SMTP id r19mr19603545qke.389.1580637791811;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:6897:: with SMTP id d145ls1999817qkc.4.gmail; Sun, 02
 Feb 2020 02:03:11 -0800 (PST)
X-Received: by 2002:a37:aa8f:: with SMTP id t137mr248212qke.61.1580637791239;
        Sun, 02 Feb 2020 02:03:11 -0800 (PST)
Received: by 2002:a05:620a:124b:0:0:0:0 with SMTP id a11msqkl;
        Sun, 2 Feb 2020 01:38:24 -0800 (PST)
X-Received: by 2002:a7b:c389:: with SMTP id s9mr21910438wmj.7.1580636303906;
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580636303; cv=none;
        d=google.com; s=arc-20160816;
        b=i315vJO6+Gb5VRACO6qi29GT8HI4+HqkrlwmCN50uGRBtzAyhu/Pi7ox1Byk804rBl
         RMTDbiJ437ra1QU3H0LHdPgQ/SC2DwalPDhe77upMypc8nCjvLx/1WvoF48Xfgyp58jJ
         OtDIH1/JnI8ewLJtBoad2TtbyGpPHpX8ABt5Y0bQ3GKaFPzzWzPQOzJ7f0DkybyoXWaN
         qfsij+CXpdDzrLW/gl2KB/3gsnAetSDvu0zMwzjPLyJ0vlydb6XNuuY+D9OrFdmvmKOG
         mElIvzUkYL7KcE7i1N4CFoLoBfBtrBJjUnl7jP6zTRu/b5KlAFC7LWJ7vnsEklAIMZcG
         uX9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/DFSL+JIs7vC6XfTnmAq7s3cDEMLEVt9B2+G1TYYNyM=;
        b=acba68J+CXaWITHxfAK7WfopwimtdnOSByDENUlxGg3V2bsEzaZikprfJ3QqAV5Jaq
         r3RMVbfUxwj8CAdodUsnqmYBbaN/0NE7XQzDP+j8s1I+/JI4aa2aHZc2GdwnO17zXUDH
         obmRyAzj0Wf4oqEWyAA7SZwm/TisTvKjV40VgO+38nHXKzKb+CinlMGTzyMLfysGX3VT
         ZC+L6M1KbUeoeYAENvfr0aBFsNF1hc37drk2bttk1LJcYko4Cv+TYBdmDiN088PnlhRv
         LkGmzP8q0RLEgkdd0/0OuhBlS47YzE+j70CD9HBhTaPq+CxPGHtmsqJc3w6Oxl2GX+CH
         ziJw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@duncanthrax.net header.s=dkim header.b=aT2gESsx;
       spf=neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
Received: from smtp.duncanthrax.net (propper.duncanthrax.net. [91.207.61.48])
        by mx.google.com with ESMTPS id r13si11543461wrs.65.2020.02.02.01.38.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 02 Feb 2020 01:38:23 -0800 (PST)
Received-SPF: neutral (google.com: 91.207.61.48 is neither permitted nor denied by best guess record for domain of svens@stackframe.org) client-ip=91.207.61.48;
Received: from [134.3.47.90] (helo=x280.stackframe.org)
	by smtp.duncanthrax.net with esmtpa (Exim 4.90_1)
	(envelope-from <svens@stackframe.org>)
	id 1iyBhn-00009N-T5; Sun, 02 Feb 2020 10:38:16 +0100
From: Sven Schnelle <svens@stackframe.org>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Sven Schnelle <svens@stackframe.org>
Subject: [usb-storage] [PATCH 1/2] usb/storage: add SCSI ID and LUN to debug output
Date: Sun,  2 Feb 2020 10:37:48 +0100
Message-Id: <20200202093750.4439-2-svens@stackframe.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200202093750.4439-1-svens@stackframe.org>
References: <20200202093750.4439-1-svens@stackframe.org>
MIME-Version: 1.0
X-Original-Sender: svens@stackframe.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@duncanthrax.net header.s=dkim header.b=aT2gESsx;       spf=neutral
 (google.com: 91.207.61.48 is neither permitted nor denied by best guess
 record for domain of svens@stackframe.org) smtp.mailfrom=svens@stackframe.org
Content-Type: text/plain; charset="UTF-8"
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

Add the LUN and SCSI ID to the debug output so it is a bit easier to
figure out which device is actually adressed.

Signed-off-by: Sven Schnelle <svens@stackframe.org>
---
 drivers/usb/storage/debug.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/storage/debug.c b/drivers/usb/storage/debug.c
index d7f50b7a079e..4787656b4f4f 100644
--- a/drivers/usb/storage/debug.c
+++ b/drivers/usb/storage/debug.c
@@ -136,7 +136,8 @@ void usb_stor_show_command(const struct us_data *us, struct scsi_cmnd *srb)
 	case WRITE_LONG_2: what = "WRITE_LONG_2"; break;
 	default: what = "(unknown command)"; break;
 	}
-	usb_stor_dbg(us, "Command %s (%d bytes)\n", what, srb->cmd_len);
+	usb_stor_dbg(us, "ID %d:%lld Command %s (%d bytes)\n",
+		srb->device->id, srb->device->lun, what, srb->cmd_len);
 	usb_stor_dbg(us, "bytes: %*ph\n", min_t(int, srb->cmd_len, 16),
 		     (const unsigned char *)srb->cmnd);
 }
-- 
2.24.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200202093750.4439-2-svens%40stackframe.org.
