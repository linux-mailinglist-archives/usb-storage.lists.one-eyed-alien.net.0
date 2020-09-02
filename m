Return-Path: <usb-storage+bncBC46ZBHC3IHBBYWYXT5AKGQEK45F3OA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FB125A500
	for <lists+usb-storage@lfdr.de>; Wed,  2 Sep 2020 07:23:48 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id a21sf1691696oos.5
        for <lists+usb-storage@lfdr.de>; Tue, 01 Sep 2020 22:23:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599024227; cv=pass;
        d=google.com; s=arc-20160816;
        b=aG10OwlpV0+ebQHdELGOngc3cx4xSZ78m40zPU6fWo1vUScNKV2CzDzrXM2tJqSpfE
         NTHO6AwHw4gIuEOIh+J5HAFlZIm71+WkOLl8r6m7DSukuKx1Af7rM5ICCc76NtQtIyZG
         zNjdYegswNAMeBID8LMzqBWYffmx+HUqc29pnjpOZxbQm/OgV7NBFxaunocfVKJeRBSJ
         TdVKePm1CPfaZ95V/5AF473Fk8CZ5UTCrrq9krckIOLZc5mAGO3Z8odwHrAHsEMZCueI
         2wUr7aFYbEVfJvk8IZ0R23Eq4kxywFgkFTrx3cbMoPh31rOP9kMyK9FxOM7Jn4s0171T
         5H0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:date:cc:to
         :from:subject:message-id:dkim-filter:sender:dkim-signature;
        bh=2Vblz9iju+z21Tjp8WZx/oIW7Sv5uRkrewdWyTJAtqA=;
        b=MTGfT6KztBg++GGWJ6raZCzmXVXDGE9vxaV+YMLIt7E3BU1ClzHgOng3lyFQk4h/Dj
         EijKlbjy+jV6MPHDRAFO4SmK1Xi7qWGHBrFz7VzL/WpKAHdsbCMTJb2Qu/7ykCZKwDIW
         eE+q3cLEthrepFLzRdTocOoZdlyrpCXhKOpJeaqMGnOvF/upJ9tD7EJAtkhev4vXP8sB
         SquNkJK6FS6K5eNSmAXYLVd+EcYlwW4a+kkZ9ksCHKVbpRqvTBc9MSg32LZT/QtGhbRu
         u5e6HhKmrDV70g78sXU3p8XVlmTsEa7/9XTnHmjS7nS2KY2qeKkllsSztYgF55vqi6YY
         cNTA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass (test mode) header.i=@clearfield.com header.s=zeus.clearfield.com header.b=kFYJ40Vv;
       spf=pass (google.com: domain of jfp@clearfield.com designates 2405:6000:b:40:0:fff:fe00:1000 as permitted sender) smtp.mailfrom=jfp@clearfield.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:dkim-filter:message-id:subject:from:to:cc:date:user-agent
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Vblz9iju+z21Tjp8WZx/oIW7Sv5uRkrewdWyTJAtqA=;
        b=Wvl3hJr7tguwOBvYE0OpLoUKHPtLv5uwdhM2mVWh4b/COse+fE3UtD70m0WWZ+Wcw4
         S9CYxdoZ1fzEQRWgG2jFksSAnCxSTirlNi/m6yUDa0NhtSELucDjWYfkxfzuHdmVshbc
         VyjwcrH0tkkDnkDT+vnbmYS4F9aQQLTCbpB3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:message-id:subject:from:to:cc
         :date:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2Vblz9iju+z21Tjp8WZx/oIW7Sv5uRkrewdWyTJAtqA=;
        b=JKyVLfSffweaEXVjd/MZgSm8Xmkl2t3ZM9e9TI92hJd33XHUz0XKlNPbVAKAto4VrX
         hAahRVHQJl2ODjwSIS3eKakCfAsvjcQUeKeeqikdNx1CO0qnqXBt2YOt0hdlT6pfb/kJ
         jS7Et/NKqxwY+Tk8JVo09cD1snxbV7GXbdkP5ZsdGDGBfoKJA7UwWwDKeXxrlQVCNVhF
         TNwS7SO8+daZsGX5jaH8P3wkkR26h46vNm4JUFUGoKcmBd9aFBh8G4QMlKeBoYutmdiW
         axg9nXwUL+z4Pg+squkt4dhm8CMELOM+KpyRa01+zH/r72G2p+H2Obhu6vB+iWrDCjHq
         M0kQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533UlGDHckyX4vFARVdEmoq9yEm5ayoINoQXR7RBaNo6AOljog5q
	s/ScX5gKn5IgI6q1ZlOt/Kg6IQ==
X-Google-Smtp-Source: ABdhPJwPjrPIpCVnrd+JOGiM9Bv2Q3sfaJ95GgkaFoAWy3RkO+rLZga9vJAnZRAs+yU3oKta1UfyIQ==
X-Received: by 2002:aca:c44b:: with SMTP id u72mr1070223oif.12.1599024226922;
        Tue, 01 Sep 2020 22:23:46 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:157:: with SMTP id j23ls244487otp.1.gmail; Tue, 01
 Sep 2020 22:23:46 -0700 (PDT)
X-Received: by 2002:a9d:226a:: with SMTP id o97mr3962742ota.12.1599024226668;
        Tue, 01 Sep 2020 22:23:46 -0700 (PDT)
Received: by 2002:aca:3150:0:b029:c9:d12c:14ee with SMTP id x77-20020aca31500000b02900c9d12c14eemsoix;
        Tue, 1 Sep 2020 22:14:19 -0700 (PDT)
X-Received: by 2002:a17:90b:282:: with SMTP id az2mr737946pjb.66.1599023659542;
        Tue, 01 Sep 2020 22:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599023659; cv=none;
        d=google.com; s=arc-20160816;
        b=ppT/OkPJpAcGrbmBX5GWFYm5lN0NX8ibrHyrYG7XDjqoaAi3BStI/BTRbeEuhg6kmo
         g+/dWqtBkwyayiyCqIPmey8NXid+muhqTJ96PMeYpYG9JJ55Ctr9UIPM+0c7HKtu/q0h
         CmEeGaZxeL7s6NJ8lVHKKIEXtrQ9W3fbNo7ozuMGPlvRTX2WPX1nwVOjbmsequTmZ+I3
         t4AJdBHNnZ+GyRblw1dAwsGTaWdrwA9Hhcv2gfWne5iJfagRXgBjOe2g/w/PRhyr55iX
         xYi3u0rtdNih03jgGDGjaHWpvwFn47DCHpQWuO38+kvmHaaE/ynCojcQmg02RbqHpvAj
         vUVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature:dkim-filter;
        bh=Evo9aLJMkOMwhSuAbZ9vPj1Aa5A9HjGt2whN0S1I+/w=;
        b=wSjnuHR2ZxOher2R++uUdaQq5ml1ujiYD4ZFQLsoRi+HRG3F1lFfeV3CICIbDTmkuG
         VqRlUOxDxrV+4iGhM8lFPJzBT27h4ALtxnfqLPzQO7XFGe41hNuXqIPTFoEZG3eoMSq1
         6FHIv8mKCWfcf1B3IXeDC2AnwlswbFh4fM4VFrKzUN60xryEF0WiyYsw5+XyWPxQhv3M
         WOdFaI5iuQ32zRkMrHGwtUN63ERoweNuHoo+HdOXcub+coCFZ7oSsl61/a94k77rVq1C
         PRSTe6k4xM1agggFVBz6Y19mFsiZe4ULVKqs6FkG7dupnURfhYh25zmuo8QgLD42/CDv
         A4bQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass (test mode) header.i=@clearfield.com header.s=zeus.clearfield.com header.b=kFYJ40Vv;
       spf=pass (google.com: domain of jfp@clearfield.com designates 2405:6000:b:40:0:fff:fe00:1000 as permitted sender) smtp.mailfrom=jfp@clearfield.com
Received: from zeus.clearfield.com (zeus.clearfield.com. [2405:6000:b:40:0:fff:fe00:1000])
        by mx.google.com with ESMTPS id w7si3005646plz.243.2020.09.01.22.14.18
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Sep 2020 22:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of jfp@clearfield.com designates 2405:6000:b:40:0:fff:fe00:1000 as permitted sender) client-ip=2405:6000:b:40:0:fff:fe00:1000;
Received: from localhost (localhost [127.0.0.1])
	by zeus.clearfield.com (Postfix) with ESMTP id 57D242582284;
	Wed,  2 Sep 2020 17:14:13 +1200 (NZST)
Received: from zeus.clearfield.com ([127.0.0.1])
	by localhost (zeus.clearfield.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Ef5s-FPwv14W; Wed,  2 Sep 2020 17:14:13 +1200 (NZST)
Received: from [IPv6:2405:6000:b:40:0:fff:fe00:4900] (unknown [IPv6:2405:6000:b:40:0:fff:fe00:4900])
	(using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: jfp)
	by zeus.clearfield.com (Postfix) with ESMTPSA id 0C6862582283;
	Wed,  2 Sep 2020 17:14:13 +1200 (NZST)
DKIM-Filter: OpenDKIM Filter v2.11.0 zeus.clearfield.com 0C6862582283
Message-ID: <8b0d02a71c781c1325a491f6450df0876d724d85.camel@clearfield.com>
Subject: [usb-storage] copy/paste error in unusual_uas.h  from commit bc3bdb1
From: Jean-Francois Pirus <jfp@clearfield.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org
Date: Wed, 02 Sep 2020 17:14:12 +1200
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-2
MIME-Version: 1.0
X-Original-Sender: jfp@clearfield.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass (test mode)
 header.i=@clearfield.com header.s=zeus.clearfield.com header.b=kFYJ40Vv;
       spf=pass (google.com: domain of jfp@clearfield.com designates
 2405:6000:b:40:0:fff:fe00:1000 as permitted sender) smtp.mailfrom=jfp@clearfield.com
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

Looks like a copy/paste error from the previous entry.

patch:

--- unusual_uas.h.org	2020-09-02 17:00:32.295919812 +1200
+++ unusual_uas.h	2020-09-02 17:01:02.596173298 +1200
@@ -69,7 +69,7 @@
 /* Reported-by: David Kozub <zub@linux.fjfi.cvut.cz> */
 UNUSUAL_DEV(0x152d, 0x0578, 0x0000, 0x9999,
 		"JMicron",
-		"JMS567",
+		"JMS578",
 		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
 		US_FL_BROKEN_FUA),

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8b0d02a71c781c1325a491f6450df0876d724d85.camel%40clearfield.com.
