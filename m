Return-Path: <usb-storage+bncBCIKNOFMWQGRBHFC22JAMGQE3KPQALA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 5526F4FE422
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 16:47:57 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id c17-20020a5d6cd1000000b00207a6974951sf1424698wrc.1
        for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 07:47:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649774877; cv=pass;
        d=google.com; s=arc-20160816;
        b=TsbABhS3jtUoMtd0cZ9j/B68UXqjkAQsaNKifrNFWbxO1A3QCMsv1jzIsnag1F306v
         wQDGahXoQHrJxKBDv6xGiu/WWPFmb5Cl7jJcRp7KdoA2awEnrPu/CU8tR8fbJELnvTke
         4PhBIIPgXHonzxxOgdnuM9o4aq5uPeY+LOmwJ8wPKlbmSlPOm1eyBXRG/zcOr2gr7vvE
         rDY33fmA5Nol9hSnkgw10btuu2RdIS9Pefjj/1csAz/MPHRvYBYgk+BXjByq0S80dGbE
         VXfCLBt1qQMGYQU1JH6qRG7bvuVcFCQYOnYl2FqGnsIcP7EkokKNImSHt41VmHUFEhLs
         v6+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=Xy7w1RsJx2M3d96TpCTMI4e7IcredrDEm9YKk8fjq2I=;
        b=BdHoLDruLoOevDq4N9ohVag2mCZQL1stYQPeoBMCaawC4FcXZyWUaVLpTwRsgK5B6X
         g4f99tJGk12JuQSp36KW9k2o5ZBmGubf5+QMnqCTDtURmTmcC9dVDmbccyveMqosnmAO
         F6P4dUAk/3saHr1eFkzCi84nmlL2d7NxS0bDW6w2ZCnBFrHxhILZTAAQaOIzpZy/yJNI
         xQ8X+grLuEn9ore8AWVJ4TwoWVoptNoY2//DyXU5KN6feKrNxewrDIBU/At4dGtxFvmF
         NJkDtQEkutVqfWx/hMzRnJeYrScuiw+Ag55PrmRbJcpuX0WuM/U3kt6v49HHDZG80jFd
         3qRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 165.227.154.27 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:references:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xy7w1RsJx2M3d96TpCTMI4e7IcredrDEm9YKk8fjq2I=;
        b=YoWnXWyidD8KR/W49B2ueAi+cMAJ+qzlvl5FYPYwr4bHQf+PnrYmXXiuhk6239j36j
         ObIL02Ni7KfUniMH2bTSzrsrLotKvNIOeNfCd1aqif7oYcHOha1lM6BzCQEcv4fekgeL
         MXbU/bwcMwlkUh6ueX34Me4lH9DVBdbhtEo1s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :references:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Xy7w1RsJx2M3d96TpCTMI4e7IcredrDEm9YKk8fjq2I=;
        b=epTcwhpuDwpsJiffRloJ9aysfiDgcoiECKiGOzpP9Z19hMoapHKxes2/5vyjM0yRcO
         z7QNcUU0UfJm+3ZkzC6Zb0vOxFaciHa+qG/mNfKbR6SHH84Mh+IfRv9Hy+4aWsEcMGDi
         79/nzkIsugRKMiqYsekSwdUZQQ/S0r92IMX1q9dsOUoj6tu8oNjkPc3cYajSbSAJ2Ndf
         7zHiIEYCDSOzENlQL5nBvui53W/biQc3BAmjcqlIp/eIPbfkI/nVuN11clJ/FQS+97K1
         xf02M42gBEISOz6ANw0kI5NJ3PYp/Rpr6QxRqmnzc7gEQtj81E4NEXaXdG8P42/nXFwd
         ZQtw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5337xK+wYUsupQoVm1chO9Kz9DgwovAoHKSEh39hd/kEH/ip7vEH
	K6L3iyVvtdhSkBG5YwypzEBNhQ==
X-Google-Smtp-Source: ABdhPJxz220uxeKMX/blIU5TXWqtsiEK806xfGahaaK7NR4w/O9VGFMvD8faR5+XkSw6tlVWsW54pQ==
X-Received: by 2002:adf:f348:0:b0:207:a696:db82 with SMTP id e8-20020adff348000000b00207a696db82mr8433649wrp.292.1649774877078;
        Tue, 12 Apr 2022 07:47:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:4ccf:0:b0:207:a2b0:7a9 with SMTP id c15-20020a5d4ccf000000b00207a2b007a9ls8705553wrt.2.gmail;
 Tue, 12 Apr 2022 07:47:56 -0700 (PDT)
X-Received: by 2002:a5d:6da7:0:b0:205:7ccc:a001 with SMTP id u7-20020a5d6da7000000b002057ccca001mr29717027wrs.389.1649774875856;
        Tue, 12 Apr 2022 07:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649774875; cv=none;
        d=google.com; s=arc-20160816;
        b=dPS7nzeIKDfcfg44Cb9ocGhCV2djUptWx2St0SoQj/uA+VlDM3u2HKD8ZmGJBLom9Y
         4JWDotai48aXk7unGIXZ5bIRQPddoYm8+z5lihYHcEtQL957eniQFWjnn4ma+N2tkUIg
         vk0MzdKIZBdBrh+NWtZMQ0vIUCaJ8kjVXWQRVOKIfbwlQWYfS/jtvXp/+KKfCcTnXrxH
         Lpl/hZD636K3QIXPeBuVqKgv25CgQ/y+UNNxwItYblWYmO3EjwlmMnFn85qrbdOtNNZP
         QEvXTy8e4RUyIm5DQtBMwMCfSKcTXOOQXM+yD4A6BxwRH41KAid/iGx5ytCUy+8mxXlR
         j4YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:content-transfer-encoding:references
         :in-reply-to:subject:cc:to:from:date;
        bh=6Q+Mk4MgJ/qxPtzvrbqDBFhRgT+G+g2vsRgtXGIw1q4=;
        b=trWm4Atu8VQFwJAyK77zR4MGNL8/PZqTpK60YGN7+DH2Nsi4xlwiK7O5PK6HJdFmsl
         ioAkN0t0FUT29DNI6FhYzM9m8QadYTgymf8zLbVRsibsWH69MlxY7rkWTnPt5Kwr1mgC
         kDqR3udQKGFQaDaKtvX6WB8AzHe7ah8iXug7GMChXlfVaqxWpbd+l6egAL3+po2PRHM3
         OfEqsUWPN86A69I7W1defQ5gAMc+EaUxpD0B+ZRjEKVUPOQOXSA1faDM5tfumnW7ZLvq
         wKmV4izmEllCSqpZUAKCvUKDZiM+6IdhZRkgvx9bTdUZGKyCooLm7W5kU/Z/MTuyuWuq
         Qzfw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 165.227.154.27 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zg8tmty1ljiyny4xntqumjca.icoremail.net (zg8tmty1ljiyny4xntqumjca.icoremail.net. [165.227.154.27])
        by mx.google.com with SMTP id i127-20020a1c3b85000000b0038e79b62377si9343102wma.52.2022.04.12.07.47.55
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 12 Apr 2022 07:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 165.227.154.27 as permitted sender) client-ip=165.227.154.27;
Received: by ajax-webmail-mail-app4 (Coremail) ; Tue, 12 Apr 2022 22:47:46
 +0800 (GMT+08:00)
X-Originating-IP: [60.186.191.15]
Date: Tue, 12 Apr 2022 22:47:46 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net, 
	stable@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] USB: storage: karma: fix rio_karma_init return
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2022 www.mailtech.cn zju.edu.cn
In-Reply-To: <YlWK7BxeO45UP4ee@rowland.harvard.edu>
References: <20220411060246.9887-1-linma@zju.edu.cn>
 <YlWK7BxeO45UP4ee@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Message-ID: <4ee24cb8.ae97.1801e3eb074.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cS_KCgDnaRATkVVipYAiAQ--.42269W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwMSElNG3GUAbgAAsC
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 165.227.154.27 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

Hello Alan,

Jesus Christ, I promised next time I will use grammar tools to avoid waste maintainer's time for the typo like this.

> s/Simlarlly/Similarly/
> 


> 
> At this point (just after the "---" line) you should have a description 
> of how this patch version differs from the previous version.  Otherwise 
> we don't know what has changed and what to look for.

Gotcha, the new version at https://marc.info/?l=linux-usb&m=164977462632545&w=2

Thanks again for the patient and useful reply. :)

Regards
Lin Ma

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4ee24cb8.ae97.1801e3eb074.Coremail.linma%40zju.edu.cn.
