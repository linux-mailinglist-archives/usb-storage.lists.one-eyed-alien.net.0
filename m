Return-Path: <usb-storage+bncBCIKNOFMWQGRBDWB2OJAMGQEEMR4YIQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1045.google.com (mail-pj1-x1045.google.com [IPv6:2607:f8b0:4864:20::1045])
	by mail.lfdr.de (Postfix) with ESMTPS id 0360F4FCC39
	for <lists+usb-storage@lfdr.de>; Tue, 12 Apr 2022 04:14:40 +0200 (CEST)
Received: by mail-pj1-x1045.google.com with SMTP id u4-20020a17090a5e4400b001cba059a4fbsf650161pji.7
        for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 19:14:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649729678; cv=pass;
        d=google.com; s=arc-20160816;
        b=Azrpgi45vttYKOIkVvqCbhjOhTXZgNCMM8cDlZWC2p3i4szrFMeAAojJU4KZLtbmmP
         2e2vyjkYlR5TUsw7OXbg3s/t3cRZQ4C0QQdzLWhVhyXa4tfcC7q7l7cKVMKdvQ8n3cT6
         1usdBRD92C8NyTCLlhxhgdSgELu3hb6PiDez3Wih3Xzy8FG0LuDha5N8kTA2XDc5kY/Y
         M5Q8Jyjv7K6DaaNT2vZJ/x8aHa/FR2RyN3SWD/IpN6RVBrhzKqLJIOvZAWBSTZ7CcigA
         nOnFuu3j5OK9zlTLxcZI3oTtKgsnHZqlbKV+I7NBvrQVxM7qP96nhwM7/KW95je+1clb
         pnUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=KTgTT7wIheGTjl3MXTb+M24q+yngbUKAyNoNGtlYOug=;
        b=xkWw6UVYiQJQ/P7za7iYXoKvTBEMt8R0LpEJIN2Gg7bjWwNG8UVpmSqYqtiylW5miw
         YdIDJfHtfAxCYmRQTOq7iqDI9c9cotlQz/xLwNjAJYuSId0ddAEV5Ms/qA2WqdHvNrN/
         S8mN4+KsML2shLGX7LJZIgddqVvqTNgscsVolucZvxy9jScQ+wSrPBiFWv7/8IizZyEY
         s+fc0e6fk7B5WhoNDxRY1ypm1xWR9Pkzr788xLO4lbiK8/BQOo4l3Q+XiFhE/NOglEAQ
         i3GsuY7d8ogZFGXOScpEZ+kjS0nVc77j51I2rlDHSTEkBk5Xl49CYeI6+bYeAouJJLdB
         LZtQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:references:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTgTT7wIheGTjl3MXTb+M24q+yngbUKAyNoNGtlYOug=;
        b=CSAswTkm0/OJFP+9DL6NatYOaNOLQAb6E9lviSHGKNNbgC06b0aie/DTxriUVpMqNK
         9VAkC99UsbfSOHtadSzTNpFhRrIVedoqECODbSWGkhmLGm0KrTK8rE4HTag7i0aJqTW4
         4fxNayiYJdYjr0tLTRBoYX0LVVoMMvF6Bmnfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :references:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KTgTT7wIheGTjl3MXTb+M24q+yngbUKAyNoNGtlYOug=;
        b=gJSMRNHtV36kGKGyUVibBg9L7XoSwQxRuRJa+QGpvxGcD8xB+Jmx2oXw9TyaKPrUsT
         fnAKIfIz4JzJQiwnMQf1L5/7KhQ16CMAl/ui0j5perktpeOIDqA7hhAla+Jd2rrQ5P8P
         DrKAwZ9H79H9AhyjJgwMxEFyFJ95SOPGStAhJTF/jVbGZL4dhnMfCxQHAn5AROthg4AD
         gASN+aeXYsauiTKnlZv8BT2J9K1nj83JfzleGdubmTZO9j33N3phL9hfSTs7vo0vHZqy
         GC8o8BEfjP0bj9ME6haOGnOkb2WCYO9P2jQC48xMc5hBwEcCe6zOqyihmaPHcN4YaCn+
         r+2A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532R7d9wDJbbrQ8ACA4U/okPLlJGVDelxfGELBYStcYxzJ2jVy92
	vOU/GrDmwsX/nVp3fsSJ81rQHw==
X-Google-Smtp-Source: ABdhPJzXQ93EAV+ZkGlZ7xTUR6rZJeYenikxCzK0R3Wh/6SwOUsYT+Lk0k8t4RQj7jlYE80nN2WFdA==
X-Received: by 2002:a17:90b:352:b0:1c6:77e:a4f7 with SMTP id fh18-20020a17090b035200b001c6077ea4f7mr2355442pjb.77.1649729678345;
        Mon, 11 Apr 2022 19:14:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:3b49:b0:1c7:821f:8386 with SMTP id
 ot9-20020a17090b3b4900b001c7821f8386ls1844245pjb.0.canary-gmail; Mon, 11 Apr
 2022 19:14:37 -0700 (PDT)
X-Received: by 2002:a17:903:234d:b0:158:5c45:7e19 with SMTP id c13-20020a170903234d00b001585c457e19mr9052771plh.27.1649729677379;
        Mon, 11 Apr 2022 19:14:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649729677; cv=none;
        d=google.com; s=arc-20160816;
        b=ABynCORj7wcHmsWY9dD0DGSDN0HxM6Yh7M6/YPbJ8bPotEsYdRPLzZAUz8H/Y3CVip
         cOuUjoNGubbYXt2GwYUAZH5vR5qNmUT+bdUBVQQ7LHBwxTdfVeRePbYKJfjUtWiMt8os
         uq8ZfW3REDjYjizmLfq/sjkZUlqlvGMCivWQVQksGlUabjLRMceqbvg060acq+I1s/7f
         VWId6Z1ptOHQPEqVJrNgyZiZm+GEEgwYgUdzW9gFVD4kTc3iIGELPxD7au+XICJOvHbR
         S4JtZBQnF5H13casZFAKYfcd172jhtuIw8NOuTu7zH+GJA+07ndtOxv06ipXpvvgSSVU
         oz7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:content-transfer-encoding:references
         :in-reply-to:subject:cc:to:from:date;
        bh=HsMWtIA9hUyGIJrNW8EUkFXMZsizIePTtxlvaG40q+k=;
        b=i8emiEgSC+tw7lP5FxBVl7+DaHx4FvCfapY3IVJBPUKJYDYx7UJNrKcCVZ06VG1ewj
         /lk1eBBQlsZhIpTUJvccI5uXEUpJyEZIQ97y2YGHDvY5lndfvzGkHteW+nzN56GkLmht
         TlhtNsiozVBU1Y1iGCNdYiMIVSCeNsd9nayCmvyb7+AlzHHsYqPLzpZsInKz0hbZhWbi
         uos4G/Jb4Hw8quoVuky72JF3D1vNTIviGzS2sIanaT4vQE4S19sNVuec9HIoN7t2if/v
         l+m1CeIvUUDRHeXzJsCF/CzsQR9MQmyOzvE6A+gJpg/jYHs8ne2p9yCUnJBdTDv3N0+r
         UKoQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id pq8-20020a17090b3d8800b001cb7eeadcccsi6483216pjb.90.2022.04.11.19.14.36
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 11 Apr 2022 19:14:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: by ajax-webmail-mail-app3 (Coremail) ; Tue, 12 Apr 2022 10:14:34
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.1.189]
Date: Tue, 12 Apr 2022 10:14:34 +0800 (GMT+08:00)
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
In-Reply-To: <YlQ67AgfvMXkUWEZ@rowland.harvard.edu>
References: <20220411060246.9887-1-linma@zju.edu.cn>
 <YlQ67AgfvMXkUWEZ@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Message-ID: <7fe78961.7c1e.1801b8d1dbd.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: cC_KCgDnHtSK4FRig4TuAQ--.35697W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwQRElNG3GSkJgAEsv
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VW5Jw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

Hello Alan

> 
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> 

Gotcha, sorry again for the inconvenience.
The new one: https://marc.info/?l=linux-usb&m=164972959907049&w=2

Regards
Lin Ma

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7fe78961.7c1e.1801b8d1dbd.Coremail.linma%40zju.edu.cn.
