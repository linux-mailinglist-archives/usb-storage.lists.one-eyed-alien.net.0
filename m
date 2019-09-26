Return-Path: <usb-storage+bncBAABBMPTWTWAKGQEH6B4RLA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x247.google.com (mail-oi1-x247.google.com [IPv6:2607:f8b0:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id 8575EBFB49
	for <lists+usb-storage@lfdr.de>; Fri, 27 Sep 2019 00:20:38 +0200 (CEST)
Received: by mail-oi1-x247.google.com with SMTP id d206sf2108175oig.6
        for <lists+usb-storage@lfdr.de>; Thu, 26 Sep 2019 15:20:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569536434; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRptRHdIjPpXrthmfXVVzC/0cUteXkJV/v0ytbEriLitIb1OWUc9kq2A58hLenM5Km
         PRxoi5K9WB9MHl1oaRtLEOivX7WA+bYjaZXIAoi7O7HWrDm/l3O3VcRdAmS/mkbhXZTC
         /2MSmBYuRfYkS2wUYVegJUsGvAWI5qXAyiv64dyOUevi1WHhmPhf51P6OgljHPHkcY6N
         snukUh3J/7QplqGRm+fOi1PeHXQCKlz3bn36a8aFs36hYty3KS/6GLVtJSbu1QAVzc3v
         3mkCnjY+Pa/ChZSDiQAcJwlG30vuzJOvhMqd18reHaCju2ANkL5ykk6KRP5y0Clj0Lux
         KyMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:wdcironportexception
         :ironport-sdr:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=UX0diLut+vswETCYsJlPvO/YytZ6VnmNKsinkSCXO0Y=;
        b=tSTm62zE0yBB7P0nkQxDg4s/o4DwDT7oE+v12MqU1IHD+jyyW0UxnDhziQr8i3SsaX
         hXF62NImO1qscL1tAqyNXD3XMPkdvHEMtNi6hLZn5Ih2/mb3DIyrymJA0UUxBHNidC1Y
         1jIBJJTPuv4YRkVW0RvJeGpP3COJc+nhnzmHJ2W4+1Sr1nYXOIlDuufluz5FYd74E/hU
         XNrl8lKYssN93X5JgJ+eWEv9cvNciYaPYskkULvuvgNTg/+z//eXWTBZschKKfesEFDX
         g7Dsg56ecOK2wbVaiLB2qrgNCDglRL9xduWYnDNJ2YAsi+cM2pq4ZGKNcSA4JpwRyhgz
         SEmg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=mxAvtQcQ;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:ironport-sdr:ironport-sdr:ironport-sdr:wdcironportexception
         :from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UX0diLut+vswETCYsJlPvO/YytZ6VnmNKsinkSCXO0Y=;
        b=efPDe7hP8Y72JrEZKa3mH8vQefuQrQGgUVJdR4xOKtVOg6QKqIwDz/N1t3pJLgpHH1
         Jizoq/WmIL2jW7uLdZLxorDdZvJHCPW4MAK9qx2Tk6ymOntRSaiYbAbqCiAMMco1trsl
         4qZOYmL5W4yGymWr56zBepmhc4ADJ50dKTRy4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:ironport-sdr
         :wdcironportexception:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UX0diLut+vswETCYsJlPvO/YytZ6VnmNKsinkSCXO0Y=;
        b=Jb0IRzynUcR4c8oUgM0HZ3x+xoTIuTyw9krhdEYM45ADRYMGREnviC21Ux1Cvee4ef
         7+DyRoOVQpR00fGDk4YMeMVxSsvmo47WIaDO7H9rcDWYdev+3kkV/tUcZIIiJknb6w3W
         QzOgB4X3mo+re12NwDbzzppfjG0IDRLxhuflgva5BpBFb2X9RRivKPBHRbaP1w9/2EKP
         Va5An8WTI/9IZBpbzMm2T/ohtd5+556OtPTAKK+zlbuY2CfxcWaT+wsNFV6nj3eDia6t
         xdIIRpEM3bd9zVpf0AU1kvRkRwTiTXKlUGYX+F8HLlK7tsAr1gq7Ic6zE7uZdlIbIq/i
         F65g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUV8bENoyl7VVELd4VvUo2uo210LOtYPqRO14YiDMXIckPys/SD
	Tyra4+7LjHBOogeSnXX3JZI4FA==
X-Google-Smtp-Source: APXvYqzhLChmKl3K1xM4z0jDfZBP6a/nuuJWO+QY7PRsmSuWTluKwaPygb2LEZDli9n4hpoYf75qMA==
X-Received: by 2002:aca:32d4:: with SMTP id y203mr4658833oiy.17.1569536433788;
        Thu, 26 Sep 2019 15:20:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a9d:66c3:: with SMTP id t3ls105809otm.3.gmail; Thu, 26 Sep
 2019 15:20:33 -0700 (PDT)
X-Received: by 2002:a9d:5a14:: with SMTP id v20mr697604oth.337.1569536433552;
        Thu, 26 Sep 2019 15:20:33 -0700 (PDT)
Received: by 2002:a54:4115:0:0:0:0:0 with SMTP id l21msoic;
        Thu, 26 Sep 2019 15:08:49 -0700 (PDT)
X-Received: by 2002:a62:168e:: with SMTP id 136mr202380pfw.144.1569535729599;
        Thu, 26 Sep 2019 15:08:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569535729; cv=none;
        d=google.com; s=arc-20160816;
        b=xGYjtewzFwdsL9m9I5BbnOWNoQJ/D9Ei9X5UDI9r2KM6rf1lHLyiVD/UcNbHbWRo7E
         CLGUPIu4NbvofDqijsQW8uieCdYfNQqLuJv8sBrOBFdn4tvG3Ojsu95UXA2d0q4EtLgY
         hPMDcJki4KHrjmibI4BGgRtnZTqxB0UNdIkRK0WKdrujZqtaisuWnWP9XVWpIADuKo69
         THAUZI5vRPFbJUS1MGlNfS8uEXea0VVY41z3efMa88wCg5ybrrCmI0wMKF7Dw3xbury7
         xzn2kD/QQpAdA2LyffZanvxP1Uf/qUnUesfibCSs14PKAX7NGFIE8BgXugniwHnYdVfa
         Z3Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:wdcironportexception
         :ironport-sdr:ironport-sdr:ironport-sdr:dkim-signature;
        bh=t/Mu1qlMPxeFOeaoomHV3BCXxbL1duq35/YXggq8ghE=;
        b=xt1qC9X4znNLgy1kdnloLdohWMh7rHC6Wc0gp29Qsm/TC0e+bW6lKVW6fOE9D9+aq4
         WYz0hHhjhSXKqbkMckO3G3umz+/IQYBYYBJtkWehcZ5+WaT+CpQTnWdtWmJJ2oZ1rb55
         2ua8ORmo77C/5rjk8GTkr8VwbKcazrxLqvANpp8aq97tYYs5kuSfDbbMlBJ84ICywUuM
         rYGXmzEAYkhuRVEPOgYuZIjPyCX3wFF+OmXN1oTD+xrPaMZ0ML8oTlWicGPHGoBGbmRd
         ue06XRjKBadaO3IwSogkZk2uxpa6CbLzgEwV50VmgMn7ynM0VYp4J4C6imvruXGjvx7p
         KQug==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@wdc.com header.s=dkim.wdc.com header.b=mxAvtQcQ;
       spf=pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
Received: from esa1.hgst.iphmx.com (esa1.hgst.iphmx.com. [68.232.141.245])
        by mx.google.com with ESMTPS id cq15si3180935pjb.30.2019.09.26.15.08.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 15:08:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates 68.232.141.245 as permitted sender) client-ip=68.232.141.245;
IronPort-SDR: puEor6QxaXT0eUkks+BzTU7G8X1BkgKjz62U/2xGqjsF1Uhs1WmSIFNhWYHDBZToRmrGyR9y5s
 RldYE/mdlegMNNYwU1hz4+xCxUeD3P1bWmygrM1rAG8+uKKVN0N0K6A5poqjDhBzrjTPAK3iL7
 iHpQfFhUC481N/Q4ia9b5Kp699GAiQc+zm0LLWhdGvLlriLpaRS2zdCk2VUPHSSeUNq2IdOjH5
 fjMZVf/l5no2rAL4gHjM3kdediXWXE805Na40WTdN54H+DgS6Lw0/ZwVhVMlq2dluQ+MhDdkdC
 hYo=
X-IronPort-AV: E=Sophos;i="5.64,553,1559491200"; 
   d="scan'208";a="226096828"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 27 Sep 2019 06:08:49 +0800
IronPort-SDR: cYsq49y0/Eel9kRUjir+l9Dh1+cOxf5be52FhiSam5ouvRS9OmdyIqnxIMEd4eB/KE+lSVYB6U
 MSTy6iEaGT3G6srVtUP+r3U1IHluPxGLpwS28cnPXCieiag80lhFrYYz4lOhZKhsy0yF/83hMI
 k5/8XNv1C0E6fLK6F9Fq4sg0t2+SFrPXQrjFNU+qJIaceK+tN4njl34pV0HISdgyoQjiNJZ2no
 gTnnBx1vNUlrYEKNrt9Lk/tk0+u+tzqH0drYTLZzN2ST9IPIbuHwSepyTK0YqmN1Y8DnkZLS+C
 Rc+KtgY+WjCLTbBebFBuyxdR
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Sep 2019 15:05:09 -0700
IronPort-SDR: 9zpNuZr0vL+FQiZahPvvSOPlN/37C3hgKudFHglsD3aYQMXbBOTAvOgQZtxQYOVkVyoGd4V+vU
 b8ppPc7GBwbaTEHjhxMZGC3GB0kPBYiIaZM2GiSMOZLYhuyq1IWQ8WUQuvryFTAgOrO59St5Kz
 df6w8FlhBblJxXY6vHra7k08n8U14WXc5r9d4SUmtiqSAdcs6stpMMtMd2eYTwolGRWWKaSL9l
 8gNAtVAHexT2wvTsuRXmFfwrp4zeerBFR3Et7DDRm2EZMGmdQrmC/R7l/U1uY0jLPhQKG3wkD4
 qwg=
WDCIronportException: Internal
Received: from washi.fujisawa.hgst.com ([10.149.53.254])
  by uls-op-cesaip01.wdc.com with ESMTP; 26 Sep 2019 15:08:48 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-scsi@vger.kernel.org,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Justin Piszcz <jpiszcz@lucidpixels.com>
Subject: [usb-storage] [PATCH 2/2] usb: Clear scsi command resid when residue
 is 0
Date: Fri, 27 Sep 2019 07:08:44 +0900
Message-Id: <20190926220844.26631-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190926220844.26631-1-damien.lemoal@wdc.com>
References: <20190926220844.26631-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
X-Original-Sender: damien.lemoal@wdc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@wdc.com header.s=dkim.wdc.com header.b=mxAvtQcQ;       spf=pass
 (google.com: domain of prvs=165403090=damien.lemoal@wdc.com designates
 68.232.141.245 as permitted sender) smtp.mailfrom="prvs=165403090=damien.lemoal@wdc.com";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=wdc.com
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

A scsi command terminated with CHECK CONDITION is hijacked to execute
request sense with the original command information preserved and
restored respectively with scsi_eh_prep_cmnd() and
scsi_eh_restore_cmnd() in usb_stor_invoke_transport(). This means that
if the original command is retried, the command resid may not be 0,
indicating the residual at the time of the previous failed execution. If
the command is retried and fully succeed, the residual of 0 should thus
be set, always, to avoid reporting to the upper layer an incorrect
non-zero residual.

Cc: stable@vger.kernel.org
Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 drivers/usb/storage/transport.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/storage/transport.c b/drivers/usb/storage/transport.c
index 96cb0409dd89..c69fcbe467ef 100644
--- a/drivers/usb/storage/transport.c
+++ b/drivers/usb/storage/transport.c
@@ -1287,6 +1287,15 @@ int usb_stor_Bulk_transport(struct scsi_cmnd *srb, struct us_data *us)
 			scsi_set_resid(srb, max(scsi_get_resid(srb),
 			                                       (int) residue));
 		}
+	} else if (!residue) {
+		/*
+		 * The command may have been retried after a CHECK CONDITION
+		 * failure and autosense execution, which can result in resid
+		 * to indicate the residual at the time of the failure instead
+		 * of 0. Clear the resid here to indicate that the command
+		 * fully completed.
+		 */
+		scsi_set_resid(srb, 0);
 	}
 
 	/* based on the status code, we report good or bad */
-- 
2.21.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190926220844.26631-3-damien.lemoal%40wdc.com.
