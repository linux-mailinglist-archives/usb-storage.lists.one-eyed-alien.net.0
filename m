Return-Path: <usb-storage+bncBD6LRVPZ6YGRBTMH52MAMGQEL22UTVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 616445B3EBA
	for <lists+usb-storage@lfdr.de>; Fri,  9 Sep 2022 20:19:59 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id l15-20020a05620a28cf00b006b46997c070sf2143652qkp.20
        for <lists+usb-storage@lfdr.de>; Fri, 09 Sep 2022 11:19:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1662747598; cv=pass;
        d=google.com; s=arc-20160816;
        b=C0oz50q7R22MI2+6gubbdGlB9WKMYuL3iLhn96+CpN08JrTaz4Nne/VQkLqJabBXEF
         gFf+gt9w8z2uyuWItQwFC6L6Xr1s00qPGjKHs7H8PzSOHP/8BSzK7VdiX6YLNAuYVMkx
         FrV+vdT268U3/S8EX6tWU4s8Yz2Oy2I6V0xbWknuf8oDG1WBN3p1d9V13Vk6fQNdb2KJ
         nWEyprRuhCToyyKEQAY8jdhbDB8QDkZb2Yh0v9yP29aO0wId5v8z0MhgLC6PwcfyAUoj
         XFlEmzWA3KNGwWihmKfXuIe5rSsffS1Glg8RkEBwHiYS+YlUE5fk9DBD/UyX5ANfLX57
         y5Kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=bo1QrMQFQJ1e1toLpN9vKFkUNVCNeKbChCRaCMgBMrc=;
        b=bKDCz/bl1slTjs7eLxLkzuSciQiRtOY/a7+cusrBHxja00X4WLulp7W/vxt39dpY2n
         e6+GxUxjMcywojNAoY1jUGNTYbHZD5oFHbJX3IdMqL2bZoHwjjppSnuNiHVhzE5Ip0nO
         1MSdyNTr33lq5Xoam2p+aP1VXgI0rwgWV0vCZlcguMhgt1d98vu5VN0CoEJKXzB5/fmU
         TCmK1h4YkpRRF2ImB3zLSQP0Og567MsG9QTHYlCf2JVDi9TU7zLc5tzpCfgtTVmNI4K3
         ZeyQUnPDUCYC0HWGMfiLaWbtDp1yKnrsVZIZTPclo2ISxHDYlBYyEnE3bMRkktr6oivy
         P/6A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date;
        bh=bo1QrMQFQJ1e1toLpN9vKFkUNVCNeKbChCRaCMgBMrc=;
        b=H5Umwy49pehlnW38+jH9SeXXIRqGhuV/P4/HbxM7auWkr/MSr8zvkl8Lvr5mvJFv9A
         gFfSAriV3mj9B/BwsTMo6mDO7zWUoT2zK5EoptpZ+BwJtUSxAedPAgD0kWrUfWtefKcJ
         7V1QTZDbwER6IM7kZZ2hkb6rTcS8+eHVVkXhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-message-state
         :sender:from:to:cc:subject:date;
        bh=bo1QrMQFQJ1e1toLpN9vKFkUNVCNeKbChCRaCMgBMrc=;
        b=NnK63pdvAMT/i1Cm40WBrTzHiSRuJY1Z/N1wYwPz9ELAsYzdpJADx2ECUGRP4ez01r
         PQ+DWJQFc5wfGb2cTrUO6tj3xOeC++rxaT9E8kdnazgaBlOloXOxzv7t68+LiXIeeeFJ
         avW+OXKaBBuuISurdnn/ihV0thspgWAFLKmNmG/2jCpwnXEnlrMEf/z/yvqGaFtgHOJO
         7vNAfs1WUIDZcCSF6Wnzp+wnuRM5cELXoL8Kn8Hzds8ptvn9sYdPC38SVvERcHCIcCzz
         v6wYu8bitOvSuK3ee4+COvPJuPz40VDlIrsY/+DVSDkMUk6tRsfl0yDNFh2KQLGKHr+q
         Amig==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo3frsxDZfrKd+OdrZq7fmzHmRQHhbweK9Z/5+LSrpJ5WAVsp6W8
	8O9sOxSnzHjrNB5w0+AH+FU0ow==
X-Google-Smtp-Source: AA6agR4abJiC7qxrLRsnCHk7bpART1VzV2j4IFZzO5PddEcyXxHDHqozqCWVGgJbhto3e4J0EdmzSQ==
X-Received: by 2002:a05:622a:4:b0:344:94b7:a396 with SMTP id x4-20020a05622a000400b0034494b7a396mr13384939qtw.123.1662747598047;
        Fri, 09 Sep 2022 11:19:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:f109:0:b0:4aa:a12f:3556 with SMTP id i9-20020a0cf109000000b004aaa12f3556ls2888212qvl.6.-pod-prod-gmail;
 Fri, 09 Sep 2022 11:19:57 -0700 (PDT)
X-Received: by 2002:a05:6214:23c6:b0:491:99e3:80ce with SMTP id hr6-20020a05621423c600b0049199e380cemr12996042qvb.111.1662747597284;
        Fri, 09 Sep 2022 11:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1662747597; cv=none;
        d=google.com; s=arc-20160816;
        b=sJIyDVlaxSPw3dLSO9FxuEDiUiyJ5oLtKrF/iWX94SZMTMezQNwydNkK0LVqTOdGU7
         YrLDKws4gX7IsAn33EEKwMdM0srQuD0ECoYtjsr0voH8Iu5Ev8fxmVKqzsriaMQlWCZu
         uM4I03RVjru+KdOToZmojl73FmQuFw7km6ABejL6wjTp1yEyRdiKBiELMdUptRTkpXOE
         grihf8dtIbbcxLzIPOdzaQnmq2jpCMmKOcLi99vXHALE2Ggj/RJ4UPTes+iWnOMTqaTh
         AONzSqsOINvyvRKNmicyq9G1nhZAoZK6VRlTMl2BZLa6cUKrQkG27PRbS+uqJbklGsLR
         nqRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=uX8qE8+StVIeWMHq1SxqupZXvx+YiEK6VbqOBaQkCbc=;
        b=L+sYHElr9DRUB9CuOXY2ru8tpAfIcjrAh3C0hUCMlAbx1ft7k4eivTcGAj4tYbfOLJ
         wkhkQjkoyt8/nZLJmwsechIcPmWSsS8k2I0dXgRhwTABvaLRsd50P8nguLYIC2x6o1JU
         HNAwLmTcE40qCEliMV6Ni93u2Vu7hkNxjfjYmQVpbxavYX10MHRu4O19bLDJ+Y6qnp9c
         NPnWkDsv5mhcS2N0ZuNnEJx6XmS9YvCY6ChmMCqv3zCRgoVqn8CjdP0wz1i13L598cyY
         yFdMQgAsgOyf7vfBAtdM1idhrVmajMC6k6HcezV18JcUE7880H71wiA/fpHlmqLetvoM
         obCw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id q21-20020a05620a0d9500b006b99020ec71si837053qkl.71.2022.09.09.11.19.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 09 Sep 2022 11:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 498196 invoked by uid 1000); 9 Sep 2022 14:19:56 -0400
Date: Fri, 9 Sep 2022 14:19:56 -0400
From: "stern@rowland.harvard.edu" <stern@rowland.harvard.edu>
To: "zhongling0719@126.com" <zhongling0719@126.com>
Cc: "zenghongling@kylinos.cn" <zenghongling@kylinos.cn>,
  Greg KH <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
Message-ID: <YxuDzEdZX1zrIwOQ@rowland.harvard.edu>
References: <1662720530-32313-1-git-send-email-zenghongling@kylinos.cn>
 <YxsucjOnUkb8NxKo@rowland.harvard.edu>
 <202209092121245768249@126.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202209092121245768249@126.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6306f718@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6306f718@netrider.rowland.org
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

On Fri, Sep 09, 2022 at 09:22:25PM +0800, zhongling0719@126.com wrote:
> Sorry , I tested it work well on Win7, not good on Win10.=C2=A0

I would guess that Windows 7 doesn't use UAS but Windows 10 does.  It's=20
surprising that these devices can be sold nowadays if they don't work=20
with Windows 10 -- who would buy them?

> I don't have Mac OSX system. We always work on linux=C2=A0environment.
> Need I resend the version V5 for patch 3 =C2=A0cancel "acked by" ?

Greg, do you have an opinion?  I don't feel very strongly about this.

Alan Stern

> Thanks!
>=20
> zhongling0719@126.com
> =C2=A0
> From:=C2=A0Alan Stern
> Date:=C2=A02022-09-09=C2=A020:15
> To:=C2=A0Hongling Zeng
> CC:=C2=A0gregkh; linux-usb; usb-storage; zhongling0719
> Subject:=C2=A0Re: [PATCH v4 3/3] uas: ignore UAS for Thinkplus chips
> On Fri, Sep 09, 2022 at 06:48:50PM +0800, Hongling Zeng wrote:
> > The UAS mode of Thinkplus is reported to fail to work on
> > several platforms with the following error message:
> >
> > [=C2=A0=C2=A0 39.702439] xhci_hcd 0000:0c:00.3: ERROR Transfer event fo=
r disabled
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 endpoint or incorrect stream ring
> > [=C2=A0=C2=A0 39.702442] xhci_hcd 0000:0c:00.3: @000000026c61f810 00000=
000 00000000
> >=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 1b000000 05038000
> >
> > Falling back to USB mass storage can solve this problem, so ignore UAS
> > function of this chip.
> >
> > Acked-by: Alan Stern <stern@rowland.harvard.edu>
> =C2=A0
> I never sent you an Acked-by: for this patch.=C2=A0 In fact, I asked you
> questions about it which you haven't yet answered.
> =C2=A0
> Specifically: How do Windows and Mac OSX work with this drive?
> =C2=A0
> Alan Stern
> =C2=A0
> > Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> > ---
> > Change for v1
> >=C2=A0 - Change the email real name and the code worng place.
> >
> > Change for v2
> >=C2=A0 -Change spelling error.
> >
> > Change for v3
> >=C2=A0 -Add acked-by
> >
> > Change for v4
> >=C2=A0 -Fix version error
> > ---
> >=C2=A0 drivers/usb/storage/unusual_uas.h | 7 +++++++
> >=C2=A0 1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/un=
usual_uas.h
> > index 8a18d58..156e89c 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -198,6 +198,13 @@ UNUSUAL_DEV(0x154b, 0xf00d, 0x0000, 0x9999,
> >=C2=A0 USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >=C2=A0 US_FL_NO_ATA_1X),
> >=C2=A0
> > +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> > +UNUSUAL_DEV(0x17ef, 0x3899, 0x0000, 0x9999,
> > +	"Thinkplus",
> > +	"External HDD",
> > +	USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > +	US_FL_IGNORE_UAS),
> > +
> >=C2=A0 /* Reported-by: Hans de Goede <hdegoede@redhat.com> */
> >=C2=A0 UNUSUAL_DEV(0x2109, 0x0711, 0x0000, 0x9999,
> >=C2=A0 "VIA",
> > --
> > 2.1.0
> >

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YxuDzEdZX1zrIwOQ%40rowland.harvard.e=
du.
