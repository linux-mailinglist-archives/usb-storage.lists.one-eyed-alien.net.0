Return-Path: <usb-storage+bncBD26DNHQRAJRBOE4YOMAMGQEWOGKF4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id 621195A9B77
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 17:22:34 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id z27-20020a4a655b000000b0044ad2d0eeacsf8628949oog.18
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 08:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662045753; cv=pass;
        d=google.com; s=arc-20160816;
        b=lZs7zvVSO6EjXR1f1iLgYIF3uKyJV8TMF3VAALpHKjhagOcrbJJJcq5LV6Tt00hpSU
         3+yA4bcOYg+ksg8dBtTfwtY/sURee/bFUfq6P1pr0Q43WihrcfXJNUbptIkzYINUrX6Y
         aQilneXi5kXSAU2+MQlAJGez/FIakZFRgvpYptMcwkc5KK3GUxDFldytXlVS4e3TIwkq
         146Mv1irbEnXLfs5Jkwf5W4aAtLLYsIQ+k7bts3yWwV1bzQq3X7rMl+9+TtlySQImC18
         rDW3fYcEc81tFkVwZogzSOexIG20CCZ7o4lwfd3KztvfKgz4iVadC/3S0tRTejyXDPMC
         pCZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :message-id:mime-version:references:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kF3BzNGtCn++9we49Njp8b5nabtADdCMSUMhxLeMu9o=;
        b=E0U1I7mbFY+AzLNuIFtpH6N5lGKcAfgkPNfiIZGVmicl5MhfJLyJieCqfjAkyrjqcS
         oMw5zr5o/syXc22rDBuHeKOB5xVxPLLvwl0nFoPdFYkPzZmbTSBxnjYEFYtl293a3J9i
         ILT6BjWEqEJPoDzFQSvAi0yEovTURK2M3FE7wh7Z76kVGK66rhixCSG9TmdXPdr+HTon
         XIZtBYoWMTKQtqULLJOoAxuO/aWe3tA6rXq6GG10zmb0a8OWjGcNUXHOU4/3GAwqFjH+
         yduEGWV+1moZK8RM5yR0fpTUW3NePv+q1AZz5s+b43qXVL7QzpHq4cOyWLaKxsSs93jm
         zbvw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=jLmKorTT;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:message-id:mime-version
         :references:subject:cc:to:from:date:sender:from:to:cc:subject:date;
        bh=kF3BzNGtCn++9we49Njp8b5nabtADdCMSUMhxLeMu9o=;
        b=U2QKgfolBwTETUJYjhKSgpnORdYGPB6s5fAeGLFUfjIslmbwN7JgQhk1hyGjJ8hlAZ
         TIoOu27PAY4FrTa7+yi5xCmlx2JJoJRcbWAjEb8zB35lJmIdoi/Poxh+ffVw/vULyuVq
         bEwT/1f1JLLWtG8dgGZaTt7r3hydF/qHDxuJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:x-gm-message-state:sender:from:to:cc
         :subject:date;
        bh=kF3BzNGtCn++9we49Njp8b5nabtADdCMSUMhxLeMu9o=;
        b=Om0DLT2PgwACX4v7ckX8y4E/Lo3k7TrKzbEkYr/0XlJYtTESnj1wLYW4XH7ba8+uEU
         Bdj1FXuCE729Zf0jqbY9BgbfUNbmwc7UjNGXwiQDWHoqM0Lg6P2+S8Cl54DVp4nZO6Dr
         XHkCOQrOI+amG06oPc/esLztIdPbE0vSKowdoe4mnO8wawkL2TceuHCuBweOzwEnyBcT
         oUQQ64RcIsAHWKE99P65sQeuRZSaCX8g3OLBodh+nyimodOWINOePkAvxqKhP37dBxy5
         A5UKAJMlBiKzy0W1+lXYhPPthGILSytBIXcD9IdVjh+tgjj73XwNI+bo1VkRiHCtLMLS
         lbpA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3ZnAccsYMI7cELnbZJvrN03NRGWUsfdh2l06nEDguGtAtQx2ob
	+dPRwcv2Y64MYEIpqQlIDqULeg==
X-Google-Smtp-Source: AA6agR6W3KXwqY9lKCZ1DCj+vqo4Ge6UVv7YCBP0DnD1glbTtAy1nrGdHCTJxreuZTCejIEOsMkvew==
X-Received: by 2002:a9d:27a8:0:b0:637:8ef:ba3d with SMTP id c37-20020a9d27a8000000b0063708efba3dmr12731351otb.48.1662045752836;
        Thu, 01 Sep 2022 08:22:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:6087:b0:637:18f0:d52 with SMTP id
 by7-20020a056830608700b0063718f00d52ls491398otb.8.-pod-prod-gmail; Thu, 01
 Sep 2022 08:22:32 -0700 (PDT)
X-Received: by 2002:a9d:12a5:0:b0:639:1b9:12b9 with SMTP id g34-20020a9d12a5000000b0063901b912b9mr12307074otg.139.1662045752244;
        Thu, 01 Sep 2022 08:22:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662045752; cv=none;
        d=google.com; s=arc-20160816;
        b=ZxqldJ9T0Zpmea7t4KCY9ILN7GDzblACpNLt+4wuFnQRuDsSf0d3z2zvB86PplVaS+
         NYInaOobIdJM6ZjqA51DORRSRgCtKzzrOnXG6k1e4+gFRrH5jd+mhvxy+qTnkJp1ihw8
         KMRbGd4hlEikOObHYFCMns1Bbka3MHNNDpm2cObnq8zmmeENfVvZhDoNDz9cefl1lcQK
         OY0r+sq8ZJsx5PrNDWvn4g615XbyyPiKhl0F+Q7m8Gem182GaCFOLqWkysfd45bbiCB4
         hP13hvGVDqlMHnDOvJgHjw3ABYGLrK7my7x/3CnSgdF5XwQ8Ec0k33w4XAnitLLEni4x
         1DjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:mime-version:references
         :subject:cc:to:from:date:dkim-signature;
        bh=75xdULdG1ZT4GjfSYpVZMHEZfafkztB6bCGEKzl4Ck4=;
        b=W14BjmUUgnHnpFSKL6qQBCET1n/dfo4b3qaTMulPvNP67mqL4+iquNO3kSpxEIhfI9
         RPekMlljWkrBnhIKpQ+QjzQcThlKAC7bBpF/+gHy2SwXbwbgsrkzWrJvyIFodSJeyjHT
         jweuYdAg1rqljQhADblj673H2ZusfXtCTHtJtNDTE0U2eywENLIhqXHlnTlg6WBAym0n
         z1TBnh+8iz3HNKbAyEshI66a81/CW9m99fWiVQaT7ZBII8SQmS+YsJHR1WGlrkLjgISb
         JELpe8Df7ElQDJM5XrW1drU3oGrvZ+xCWM2ykJeeUF2+BcDNqg4KfrQlRG7HGIKmZkmq
         fFBQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=jLmKorTT;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15112.mail.126.com (m15112.mail.126.com. [220.181.15.112])
        by mx.google.com with ESMTP id l26-20020a056830055a00b00638cadcd696si12754115otb.174.2022.09.01.08.22.26
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 01 Sep 2022 08:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as permitted sender) client-ip=220.181.15.112;
Received: from 0V5ZS2WE6VIK6H0 (unknown [120.204.148.63])
	by smtp2 (Coremail) with SMTP id DMmowADnJrP1zRBjb+NiAg--.28175S2;
	Thu, 01 Sep 2022 23:21:26 +0800 (CST)
Date: Thu, 1 Sep 2022 23:21:28 +0800
From: "zhongling0719@126.com" <zhongling0719@126.com>
To: gregkh <gregkh@linuxfoundation.org>
Cc: zenghongling <zenghongling@kylinos.cn>, 
	stern <stern@rowland.harvard.edu>, 
	linux-usb <linux-usb@vger.kernel.org>, 
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>, 
	<YxBvNEn0jEEd0lXV@kroah.com>, 
	<2022090120371974113815@126.com>, 
	<YxCtyOUkRlIqcC4d@kroah.com>, 
	<2022090121570194160929@126.com>, 
	<YxDCdQ885wdyr8wG@kroah.com>
X-Priority: 3
X-GUID: 5597AAF0-0B69-4EEC-BC04-736015EB9E8B
X-Has-Attach: no
X-Mailer: Foxmail 7.2.16.188[cn]
Mime-Version: 1.0
Message-ID: <2022090123202674417144@126.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DMmowADnJrP1zRBjb+NiAg--.28175S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZFy7AF1kKF4kXr45tw4fXwb_yoWktFc_uw
	srAay09w1kCa17Cr12kFsrGrWYqayqgw4fXFyfGr4IkryFvFn8WaykK34xZrWrZws5Gr95
	Ja4YvrW8Ww1j9jkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRMhFx7UUUUU==
X-Originating-IP: [120.204.148.63]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiuR1v0FpD+bgnvwABsa
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=jLmKorTT;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.112 as
 permitted sender) smtp.mailfrom=zhongling0719@126.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=126.com
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

sorry, Falling back to USB mass storage can solve this problem, so ignore U=
AS
function of the chips. I don't investigation=C2=A0for windows system.=C2=A0


Thanks!

zhongling0719@126.com
=C2=A0
From:=C2=A0gregkh
Date:=C2=A02022-09-01=C2=A022:32
To:=C2=A0zhongling0719@126.com
CC:=C2=A0zenghongling; stern; linux-usb; usb-storage
Subject:=C2=A0Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and Hi=
ksemi usb-storage
A: http://en.wikipedia.org/wiki/Top_post
Q: Were do I find info about this thing called top-posting?
A: Because it messes up the order in which people normally read text.
Q: Why is top-posting such a bad thing?
A: Top-posting.
Q: What is the most annoying thing in e-mail?
=C2=A0
A: No.
Q: Should I include quotations after my reply?
=C2=A0
http://daringfireball.net/2007/07/on_top
=C2=A0
On Thu, Sep 01, 2022 at 09:58:03PM +0800, zhongling0719@126.com wrote:
> Some UASP capable USB-to-SATA bridge controllers are not compatible,this =
problem has always existed.
=C2=A0
What problem is this exactly?=C2=A0 Why is this failing on only Linux?
=C2=A0
> you can refer to other auther submit the similar patch.
=C2=A0
What other author and other patch?
=C2=A0
>=C2=A0this patch is fixed no speed,not slow speed.
=C2=A0
I do not understand, sorry.
=C2=A0
thanks,
=C2=A0
greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2022090123202674417144%40126.com.
