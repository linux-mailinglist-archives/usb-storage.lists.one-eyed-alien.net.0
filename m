Return-Path: <usb-storage+bncBCUJ7YGL3QFBBT63YKMAMGQE6P7UQPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x45.google.com (mail-oa1-x45.google.com [IPv6:2001:4860:4864:20::45])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EA15A9808
	for <lists+usb-storage@lfdr.de>; Thu,  1 Sep 2022 15:04:16 +0200 (CEST)
Received: by mail-oa1-x45.google.com with SMTP id 586e51a60fabf-1226957d3b5sf637536fac.15
        for <lists+usb-storage@lfdr.de>; Thu, 01 Sep 2022 06:04:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662037455; cv=pass;
        d=google.com; s=arc-20160816;
        b=C89D7PWA30DSIBr1fZ2SoQf5f8w5aUkqt0T/4HM485NranjEcdQxWVHbhYBpu69qXP
         rb5ZUVwairnA5LHXgKMHjVdf/MHy1at/4auQLSodx6jolqvA1UasyvTFowxvOVdNa0MB
         M4tDExLsbg+QB0pj4YMzynI/rd7PO6p65Tdm1YV59qvlwLGvTXzdcZpzD78OzYhgGdUb
         +hO8Kh7MpoM8BzjhU3kCDBVLsrL3IK+NN4knEXbzOo6NcAwxlcwJ7VLxtq4uPFI37xTE
         EODd3QyaNug1Ck6bG25rWKOaWmhZji418mJXxY7HuSLc+pJFWxxL4J4mtYKE+bu/Au5s
         xJCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=C7hYC44EhAC4BX9ZJaUcBrud8eWZlmlJPkKImACWO+w=;
        b=N06gg5qHf7AXj/zZ0cMpkUZFnpGB+z1xgnTLP4WxWinOP1mc9JlBrP5aqtZsX53k93
         0skfjNGXSPN7nztO6D+X0tZ7S5XMld3MzmPf+10k1VxKsLHDyp9GhmaZz2Pk5kFB7HPw
         1U9tYcUCQALnLsZ8mzVGOvW05CDp23LgFtWv+gvC8/bbrUTNocuosIXf9armhRua9eFX
         LX100la/RtL12qKfBsh/cygLy3qaa7A7K+WRHd07r6cXDMWS9aRTtIpP07OBfXoeQKpM
         zowuOvqG40Rs0PMq8yEsrJpJy4N+5WrgvamDZMWBT+Oqri0UlOR6D07QMQP7cksQkAwN
         xx7g==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=URojpcAP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date;
        bh=C7hYC44EhAC4BX9ZJaUcBrud8eWZlmlJPkKImACWO+w=;
        b=SVqjVIHKyCVDs9RNeQ0T2CkfTWsc/16YalHg7uTMUy8sa+EuGfq/jCwDWmvl/t4VJW
         3JUW6Ffw2mToOA+yVL5dtN12im65CARsHT6/dKrkIQDhkmevaS6UDtZeSYZWYCiTA9WU
         MXbL2BVlfyjz6R3v4MAu/EoN8VfOqC941mimE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=C7hYC44EhAC4BX9ZJaUcBrud8eWZlmlJPkKImACWO+w=;
        b=fRxz/ERMnrOGns5lyn7Q1DlcAqN3VPv0NMx+62EQEDFL/Fot5MCxSxgPOeyBeDuYp8
         pF4iWMeUgZ/yobvwK6jKWK0p4HN43dHT+fIjjMoPuKHbzDOfwy7YC47PTEBZZkF2sshX
         jy0R1P7RZ/+m3IbmmFCvxASbVFoMMkWD8l1zD050DaE6G6+VgNlRV4ePA7u+UoRr0DQ6
         ph/+IIE5MaiYbUqHg2OlM3Xzou3zzaBsszvslDoXFq1mquHOIjsHCScw1rsqRyAAEqsO
         7Ji+PPmXoVBSlbTKr7w12O9Xju2454tqfOLZ6V8zyapxTqKDKpbjAACZHocz2rXzkKP4
         +6cQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo0kg5+jlz8ac1xB51LDQhsqi8CEXw+IAKWxSX5+z73QshBPaGiN
	aiZIxn00/7aKat47s4BXxoUNkQ==
X-Google-Smtp-Source: AA6agR5BFwZAMgQkywMReqNJT5/4YQCI4thfNQeuHmli3RFWyxyrbGapgZZwYZi1scmF2AYSaCYgHQ==
X-Received: by 2002:a05:6870:c143:b0:11e:10fa:33b with SMTP id g3-20020a056870c14300b0011e10fa033bmr4139822oad.276.1662037455322;
        Thu, 01 Sep 2022 06:04:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:605:0:b0:344:8f41:1800 with SMTP id 5-20020aca0605000000b003448f411800ls589884oig.10.-pod-prod-gmail;
 Thu, 01 Sep 2022 06:04:14 -0700 (PDT)
X-Received: by 2002:a05:6808:21a5:b0:345:57c8:31b0 with SMTP id be37-20020a05680821a500b0034557c831b0mr3222871oib.6.1662037453883;
        Thu, 01 Sep 2022 06:04:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662037453; cv=none;
        d=google.com; s=arc-20160816;
        b=mXRldLhtYYS/ARAo7ACkzy4UT88lkU1dOG8EZ/ygNtp8px+7s8A0eoPhHhPad+I5Rn
         vrUVrs0SBw0VsdU8MqWvrCkjWsZ/QdxvsRIy3dmYKOQ03B9vWrJfaNQh88v3tA41Kb5o
         PxW0v5y/FMpbg/zJI4UTD8Ai4jvCxriVlI+JqyRHidlgUaGMkryqma7T/cZKJ2+f/vP6
         Qy2I4lZdAsQRzqffgBAgn3P2xAcwJCPUidR/CY6TxC4nwDrznG2xDiU+ZCanQFxek0Nf
         0CszR1Uw9/icB0eMzP/QiXtu3a48rrWLxbMx7s32uFLIMjBTK4yKy83aTx1bbtEb5877
         qKsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=uwHw2VLxMJzhywxq0vJDC7kYMFagR6bDqD4dKTHEnEc=;
        b=G4ZKz7wrke8htMJ6aZoZrg5zH7zVKgkKL8eW3053dfUeCHvKNWWUtfWAf1OHPLLkYM
         Nv9gHU4LxbJgCs2GD1/A5xMbWY0MnoddA3pR7YoVayl3fafpLJZI6xGOjB5fIcfW/HX1
         MYwtYx7A9JIg0bKB7lL+mx63AEiPwbN+UV0e9duy23FlQraaqOTav/Ov3YIICJNb8eCt
         deAmVSgHw83vAnwOjptFeLWMlLy6NRvWeaQMPUfvVnrVSNG8m60Oyc5+tn9a7lFo6X+T
         3enzQo3Ys0RxxsVA8Ve7yzrZIFbCKIjm3EZ3JTb8uqIdXINZjdlDE1CLSEthMBct31je
         L+Sg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=URojpcAP;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id m15-20020a056870560f00b0011eeff780a8si7308835oao.131.2022.09.01.06.04.13
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Sep 2022 06:04:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8441761EE3;
	Thu,  1 Sep 2022 13:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83BF0C433C1;
	Thu,  1 Sep 2022 13:04:11 +0000 (UTC)
Date: Thu, 1 Sep 2022 15:04:08 +0200
From: gregkh <gregkh@linuxfoundation.org>
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: zenghongling <zenghongling@kylinos.cn>,
	stern <stern@rowland.harvard.edu>,
	linux-usb <linux-usb@vger.kernel.org>,
	usb-storage <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4] uas: add no-uas quirk for Thinkplus
 and Hiksemi usb-storage
Message-ID: <YxCtyOUkRlIqcC4d@kroah.com>
References: <1662015653-12976-1-git-send-email-zenghongling@kylinos.cn>
 <YxBvNEn0jEEd0lXV@kroah.com>
 <2022090120371974113815@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <2022090120371974113815@126.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=URojpcAP;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, Sep 01, 2022 at 08:38:21PM +0800, zhongling0719@126.com wrote:
> Hi:
> =C2=A0 =C2=A0Sorry again, The last email was wrong, fixed my email to not=
 send html email and respond again.=C2=A0
> =C2=A0 =C2=A0The drivers manufacturers advertised high speed support plat=
form is Windows,MacOSX, not include linux 4.9 , this bug will affect the us=
ers=C2=A0
> normal use, run iozone is just one of the behaviors that trigger UAS cras=
h ,We will handle that slow issue.

I do not understand, sorry.

What is special about Linux that causes these drives to break with the
UAS protocol?  What is it doing different that OSX and Windows does not
do?

We should fix that bug, not degrade the performance of these devices to
extremely slow levels for no good reason.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YxCtyOUkRlIqcC4d%40kroah.com.
