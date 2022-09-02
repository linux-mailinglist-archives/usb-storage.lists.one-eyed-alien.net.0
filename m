Return-Path: <usb-storage+bncBD26DNHQRAJRB2UNY6MAMGQEN5I5NHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DBB5AAAD2
	for <lists+usb-storage@lfdr.de>; Fri,  2 Sep 2022 11:03:41 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id 136-20020a63008e000000b0042d707c94fbsf915371pga.9
        for <lists+usb-storage@lfdr.de>; Fri, 02 Sep 2022 02:03:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662109419; cv=pass;
        d=google.com; s=arc-20160816;
        b=bCxgXke7CbNtVit6yUP8rhZPXRceFR0B0ihX65CmvG5WTVjtVCM9ZveVvyX9upF9Wh
         v62CEcMtpIpqjLhNwwDZndFCGMo+BZ2PkqD3EeaU1TIZ0rzk8ukOYk0GQ0Stb+FHudDd
         ewiYu8psMi0Utr/6ab4FkVIPfIzSbj6IC8zmTZGDGBVxlOPe0+8xlxtA3Vjuv3tJLh3Y
         dFA9c+DhNiyIzmWdjnZ9RlHrSEvrEFrVx0aokM6ArKJLLy5Y//lozl/Dx5ZIw0YJWcVe
         dp6fl7Q/E+3E8016uXKDO91S3xPOo73+8y0ewTO7momCa1UT7LgAw9gBzQQF2WTgxUqH
         4lMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:references:subject:cc:to:mime-version:user-agent:from
         :date:message-id:sender:dkim-signature;
        bh=rWE/4DCMyGakRMCGOOpSPaDjboRMHLl2Zsckf7077uM=;
        b=1Fwan34PwZ+4bKxvnr3Do60AcSkV1GyCkIUthzRJjE5y4iN8nVX7uONofzG2KmAntl
         ACSa0RapNIXkiXUvgcSqqCZ5IEVhLaeFYUpgu1s9TvLhcVj6hotUt2smTA/HaGeuEfYk
         dFMPtFE6bcBo5Mh1RNrdkPhs1/hc9cJeFC7Vq5FiKMA0cqg20J8Bw/9h4HMO9plE346N
         R2Xwh7jNkstbU0hfl3p1f+582kOyZ66hrOuZ/j/qKFYaTDwxwUjPIUJjzzqf48Kg3U+B
         4omttCKK78ThsioK+wiKsendruWI0fyqhNOmv50lQ5jE+6cRESL5jLniSUqNFzRgBFdO
         GUkw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=hDnACpZ0;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:references
         :subject:cc:to:mime-version:user-agent:from:date:message-id:sender
         :from:to:cc:subject:date;
        bh=rWE/4DCMyGakRMCGOOpSPaDjboRMHLl2Zsckf7077uM=;
        b=JZgVVkK1LBTg7nkPyrPixG52QRSMiwVZek0HEI9ifeuS7UyBAxh73Zh0cCgGypw1tt
         mnJ9gov2FNVIRTFPhtZFwIbn48MKc2Tr0KX+U1m41LlTZGEk4G8/nC34uPqxpz68khr6
         dTcy8p6CJ43UAenE9JAcSdezWCsGgN0kU0ghI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:from:date:message-id:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=rWE/4DCMyGakRMCGOOpSPaDjboRMHLl2Zsckf7077uM=;
        b=cX+4mgkvKA0VH0X0yn+UMc/Et6DpH6XwzFhs/d+mRvQ/tgbV/AbNZors++IxscreZd
         KnVGbLkYidxoGrgHJ13wk7Fkf8c3ncb/AvIQ1zZ1wYdaF9HtVlN6hm7D7RMeTm+sRY3K
         Cy9vzRdxe7rw5+l61KdcjNmHQLKYh8mj3joo8uZopASKti9RMoQ3+nrLAOrInW8h5Itv
         kZFKGKeJUwIlrWolwdDaaoXa2UhGKxJF90SymF0ktzhMwTkgon0SQFuTAFYAiYt6MfGS
         rrOVXSVG3XzBokK7h0Zt43HQUsV7IaNttLNK/urbJMZmzNdpe4x1RdMjMvPtlD7Z1kSq
         +4LA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo2oBm1dTTuP+ZUIELLgVK/bf/XXHQ06q4twMUi9oUSyuMaw2RjP
	KHAPR7AFaLPDqjv29SuuPnE8/g==
X-Google-Smtp-Source: AA6agR7HJ3aHEfes3Z/CexACre2cg1wCqBOU7e0J4BemhwUck6DmNHSSSOjjbeJ6GFjT1taGD/bjRQ==
X-Received: by 2002:a17:90a:8a15:b0:1fd:bcad:2471 with SMTP id w21-20020a17090a8a1500b001fdbcad2471mr3829424pjn.38.1662109418921;
        Fri, 02 Sep 2022 02:03:38 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:1b64:b0:1fe:2dcc:657a with SMTP id
 q91-20020a17090a1b6400b001fe2dcc657als5101994pjq.3.-pod-canary-gmail; Fri, 02
 Sep 2022 02:03:37 -0700 (PDT)
X-Received: by 2002:a17:90a:868c:b0:1fd:cfe8:5511 with SMTP id p12-20020a17090a868c00b001fdcfe85511mr3671291pjn.174.1662109417821;
        Fri, 02 Sep 2022 02:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662109417; cv=none;
        d=google.com; s=arc-20160816;
        b=d/rRzn+yzahbbVG/BayPCEqJupbwhys9lvtwqW4jPRFAL/M1RKCs/6yYya1xOO4/LL
         vOQuz3IlfIs17+VA6kaNGCslBrdHHr9/OpUph8XVe5bgFvM9X81inRxNKg6wq2EPXrl2
         7UPknL/PAJxRe/RsCuserIkQqWlqQ+QMx8OW4T+YXfrGO7t3CsJtynnHpINlFvzHmre3
         CAePxZvi94OUtuzDgQHqd3skYAMKPg/Cu+iiFMst/qNBWDB4qV4tIgmqVwPVpa5ifNYR
         ObZq0iWbg9/F45wmkFBgSSLp3aD8rQ5XevntnelibPMPPooEVF/FT7PVaGl/R/LGaZL1
         b/cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:references:subject:cc:to
         :mime-version:user-agent:from:date:message-id:dkim-signature;
        bh=NCa3359hAgm4SPuAP/Xtq8NZEttoCoARxHDuc+GO8cE=;
        b=wsLIl4wR8Oi3BlRoLz8TnH7wpvfLzE9EeNnnFd78cpurVM4vtyVmLdLpXWlkzR/UYY
         OYCLB95MGxXc/exMYsmPJCalJXWrgxTHjHwnpfkHJgwf0ArDrh4dR7RGGUaVek9Ak15C
         ZNoyWHf89HCzA6Dp0t5Je3CAOoDTy4izQxKQefbLEGAbAbCu+TSZqCuDgTUFO3Efz8nc
         756jiyNOqcRkjogJ0WWqP5WLFN/t8CXH1mVZRPsV16GY19ycHnwGvd2nlLdl7SXx9JvU
         eD6dP0veSlvwfMc/g4KbQf9tak3x1O+czHwoeHw+mEo8SpEc5hl9oOo+mVjchBHNlVml
         D5Tw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@126.com header.s=s110527 header.b=hDnACpZ0;
       spf=pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) smtp.mailfrom=zhongling0719@126.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=126.com
Received: from m15113.mail.126.com (m15113.mail.126.com. [220.181.15.113])
        by mx.google.com with ESMTP id h71-20020a63834a000000b0042ab026f1b9si1430806pge.161.2022.09.02.02.03.37
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 02 Sep 2022 02:03:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as permitted sender) client-ip=220.181.15.113;
Received: from localhost.localdomain (unknown [112.64.161.44])
	by smtp3 (Coremail) with SMTP id DcmowAB3I8jkxhFj1zysAg--.31320S2;
	Fri, 02 Sep 2022 17:03:33 +0800 (CST)
Message-ID: <6311C702.708@126.com>
Date: Fri, 02 Sep 2022 17:04:02 +0800
From: nana <zhongling0719@126.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: gregkh <gregkh@linuxfoundation.org>
CC: zenghongling <zenghongling@kylinos.cn>, 
 stern <stern@rowland.harvard.edu>,
 linux-usb <linux-usb@vger.kernel.org>, 
 usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v4] uas: add no-uas quirk for Thinkplus and
 Hiksemi usb-storage
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn> <YxBvNEn0jEEd0lXV@kroah.com> <2022090120371974113815@126.com> <YxCtyOUkRlIqcC4d@kroah.com> <2022090121570194160929@126.com> <YxDCdQ885wdyr8wG@kroah.com> <6311A323.40100@126.com>
In-Reply-To: <6311A323.40100@126.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-CM-TRANSID: DcmowAB3I8jkxhFj1zysAg--.31320S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tw15KF1kGryxur4fKF45Jrb_yoW8AF1kpF
	WIq3Z3GF4DGr18tF42vF1IvF4jq395tFWv9ryrWr47ta13XFyftrs2grZ8uF1DXr1kGw1U
	Kr15Jry8CrWDAaDanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UJKsUUUUUU=
X-Originating-IP: [112.64.161.44]
X-CM-SenderInfo: x2kr0wpolqwiqxrzqiyswou0bp/1tbiLQZw0FpD-Zl+mQABsQ
X-Original-Sender: zhongling0719@126.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@126.com header.s=s110527 header.b=hDnACpZ0;       spf=pass
 (google.com: domain of zhongling0719@126.com designates 220.181.15.113 as
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

explain for this:
   this patch is fixed no speed,not slow speed.
I do not understand, sorry.

---I just checked,I got the disk test data wrong , the high speed is for=20
usb3.2 , these disks are usb3.0 ,so the slower speed is normal.
the disks of USB3-FW appears to be incompatible with UAS cause crash to=20
no speed.

Thanks!


=E5=9C=A8 2022=E5=B9=B409=E6=9C=8802=E6=97=A5 14:30, nana =E5=86=99=E9=81=
=93:
> Sorry,replay again
>
> a)These disks have a broken uas implementation, the tag field of the=20
> status iu-s is not set properly,
> so we need to fall-back to usb-storage for these.
>
> b).I found this patch . The causes of errors are similar.
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?=
h=3Dv4.9.326&id=3D3ba5d3a2cf40c4ebdc1f702af3b5dea405a6a11e=20
>
>
> c) not to express clearly, the driver cause hang on by copy big files=20
> or stress read/write.
>
>
> =E5=9C=A8 2022=E5=B9=B409=E6=9C=8801=E6=97=A5 22:32, gregkh =E5=86=99=E9=
=81=93:
>> A: http://en.wikipedia.org/wiki/Top_post
>> Q: Were do I find info about this thing called top-posting?
>> A: Because it messes up the order in which people normally read text.
>> Q: Why is top-posting such a bad thing?
>> A: Top-posting.
>> Q: What is the most annoying thing in e-mail?
>>
>> A: No.
>> Q: Should I include quotations after my reply?
>>
>> http://daringfireball.net/2007/07/on_top
>>
>> On Thu, Sep 01, 2022 at 09:58:03PM +0800, zhongling0719@126.com wrote:
>>> Some UASP capable USB-to-SATA bridge controllers are not=20
>>> compatible,this problem has always existed.
>> What problem is this exactly?  Why is this failing on only Linux?
>>
>>> you can refer to other auther submit the similar patch.
>> What other author and other patch?
>>
>>>   this patch is fixed no speed,not slow speed.
>> I do not understand, sorry.
>>
>> thanks,
>>
>> greg k-h
>

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6311C702.708%40126.com.
