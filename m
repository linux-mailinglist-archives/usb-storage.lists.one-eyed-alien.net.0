Return-Path: <usb-storage+bncBCUJ7YGL3QFBBV6OW2MAMGQEQN7ASXY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x547.google.com (mail-ed1-x547.google.com [IPv6:2a00:1450:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE275A5B54
	for <lists+usb-storage@lfdr.de>; Tue, 30 Aug 2022 07:59:52 +0200 (CEST)
Received: by mail-ed1-x547.google.com with SMTP id m18-20020a056402511200b0044862412596sf3415931edd.3
        for <lists+usb-storage@lfdr.de>; Mon, 29 Aug 2022 22:59:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661839192; cv=pass;
        d=google.com; s=arc-20160816;
        b=m2RmCDzYWA8wAp3kQVfQfa5NLYlyZgvY5KehJJS+ol28azx5WL2QxlR41iK0BxXUNT
         5gFfX+b1jp6cHXodGoqxvjENMxx4Wo4UfSK6vnTvHAr3+tlOgfAn/kIxfNio0aGhQ6GE
         oJfjwsuOHTjyxGLjVpZwiFDWc+xVkH82UYWNZcyj5fr6kgu/9lDzbya6l79BRsJylcQF
         JgMTNokjSyT2a5XC4GRs2b6F6uK0RQw/QdMSsdeJbiRmSiIK+rCx9D0aa22OW4lTnfUY
         Skdzgy2FY6ER7KMr+JdaaRlpE6iENf4jX8JXmuBF6wiLpMeTBSuCBgX5RUjoUZlhdFqq
         LLMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vgWwAtKuF76uMqBes38ommOUe3DaWJ2EtSw1+qCZBpw=;
        b=EBJ0GXFVYJXuGbQj+kEFY6vWI9fsusD3f7SnvV2O4iRrN78UkfdzkDWtZb917NHKVZ
         JeHdgvrrEfoLblYvCLwAEeS7FaJjQgqDgX+ygDfVoewkOqVkuW21+5QT8xBO57yz0lqa
         YKz/C08Kv7DX9QBH9s7xAMgPFqZE4Kok75QREhnUh/3toTP9E/aOZbVe9YgYFnF0CoN0
         xg+Of9yzzZQJxS4xjzOLFS/9zWpFGjobdsm4Y0ltYkd54acQBvuLeCINkYfnckUNRhtn
         HSlMSSeYFC5YwGskfeGXU0ks1lUFbp1AU+89dhz2GLX5/N36zQytKfHgh2XYQxkDonYA
         xJTw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YktAs4lu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc;
        bh=vgWwAtKuF76uMqBes38ommOUe3DaWJ2EtSw1+qCZBpw=;
        b=i7zl4YGYJnVD7tGjIbFoWr7uS2BVlUIO0vGBwHXNxSxLCeCj1fdh2+eOAx9rj/C/om
         JsmAG0WamJxVdSnlz2hbLyvMUER0Jw/SEtu2oYfMYOFA0j3dhakw4stYAzLlE5AVtIQN
         92jGCXMNUfPWFuw6O82nsinv7G+30WCOk04Rk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc;
        bh=vgWwAtKuF76uMqBes38ommOUe3DaWJ2EtSw1+qCZBpw=;
        b=q3p4h8Sabe23alxTa070Wc7aTTEDcy3MJoAGK6UXDHuAJI+kR6Byjcj6ZsTYZzEo3A
         JluniSJfNVgJslrge05cnlRnWvl9ieIjKnKXSrh0IUJAOjLFFF1e45ET8MoG+KlBIluO
         i2KAv6fYMyErq5tC0KF4LvICthMVpIaG8g5XSbzXp5s8LegJoOEx5d31BdMUbAOZaKTL
         HM/qE6EiV4TdJswgg0jImmshYNSsXZYhh18SpL9uV6g9eXd1b+kwMwZHl2y7gww9ci5A
         iiB69sGMlVJjcBsQzaYCIqBhu0vPM4WqfkX4brEpmpxcgUkhUfD3jSVDTPL2yhN0uX8q
         MzOA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACgBeo22fzFUoHRAr5sddWg2DaklT5C5GKpyypcRocXIU9dSimUp3mAT
	yCAhS524ieQ1H4n2BiopT/kwDA==
X-Google-Smtp-Source: AA6agR6Q1PJ4uNfNwR6ZTe3gygxFp3Edf+zH6SImaSe/102qQg+v32YGCWVu4lENv/5XFJKJ/s6vVg==
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id e8-20020a17090658c800b006fe91d518d2mr16140036ejs.190.1661839191895;
        Mon, 29 Aug 2022 22:59:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:2805:b0:447:ec6e:2ee with SMTP id
 h5-20020a056402280500b00447ec6e02eels592415ede.0.-pod-prod-gmail; Mon, 29 Aug
 2022 22:59:50 -0700 (PDT)
X-Received: by 2002:a05:6402:1a51:b0:448:3d18:b110 with SMTP id bf17-20020a0564021a5100b004483d18b110mr9351475edb.238.1661839190687;
        Mon, 29 Aug 2022 22:59:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661839190; cv=none;
        d=google.com; s=arc-20160816;
        b=J/FcmqNS59xEwY6HNw5m3etNezQGo8L1nuA6kLNzvWyeiXXGX24YhXGxXp9F2xqJmv
         xCtWNXrWPeZO6qBdEe7t2cqvZuNunMdJdg3ePQTDT6W2WAoLG1QctINnlqB8I8B9Yoz5
         7I64V6UzEsz182wx1l8XM1lMjuKsdCazV1UPMQcsFuo7SUrZlBFElOdggGh2VqpPmLjs
         IPh4GS0wtMCrg2LrF0IQIt5GjzK606QOLHRyHutsflq7hOkeOKkG6XP0XpCS553etjSe
         uS2hNfL4Td3e1xtUQuDEneKIHPVFaUKnj7FAw323Y/STlwZ0Qar48kyP7FHimnN5CZST
         Dkzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=sqcnXkMeHVSrK1DdOoONG/sem7FunWiIYfvY63XZC/o=;
        b=bDQix4bZgsFkZOQ4I/LXRr2pVN5VFQrS6UW+eniiJNQ+G3+Hqy394LAS8iTSl0Tfu5
         G//UUrWu5C0liDEdUHndn+wJJtvBv7CvXhACqQvV+23s3Xgm1enrW4BmknQ9fY4twqjM
         LXQxH8nAB5xlNlxxoyNMJDUyzbYabInNh+xDgpcMmrhteULgvu9UiKhd3p/8Dxj4IKjf
         APAhhFBJi9f5ioL0KiDzQ5Q/wimBZ0XI0M2AkhugT+e0hfyFz1OpHn0mK3HKXXQJUXMv
         97VetBz9CItRWlYi2lxUx2mMFnctCnMnWjH+oztQwu/XdF7KgPZEM0ZPLQal704Io5ql
         Q4lQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=YktAs4lu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from ams.source.kernel.org (ams.source.kernel.org. [145.40.68.75])
        by mx.google.com with ESMTPS id b13-20020a056402350d00b0043b52adbf6esi9506172edd.557.2022.08.29.22.59.50
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Aug 2022 22:59:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as permitted sender) client-ip=145.40.68.75;
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 6DF62B8162D;
	Tue, 30 Aug 2022 05:59:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1758C433D6;
	Tue, 30 Aug 2022 05:59:48 +0000 (UTC)
Date: Tue, 30 Aug 2022 07:59:46 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Hu Xiaoying <huxiaoying2008@gmail.com>
Cc: usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
	stern@rowland.harvard.edu
Subject: [usb-storage] Re: [PATCH v3] usb: Improves USB2.0 write performance
Message-ID: <Yw2nUkHFiga+I2af@kroah.com>
References: <CABd4UjZmn+J86BtSrRY42s57fpO+F5LBQL0neLpczzWKJ_Srxg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABd4UjZmn+J86BtSrRY42s57fpO+F5LBQL0neLpczzWKJ_Srxg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=YktAs4lu;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 145.40.68.75 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Aug 30, 2022 at 01:19:32PM +0800, Hu Xiaoying wrote:
> USB external storage device(0x0b05:1932), use gnome-disk-utility tools
> to test usb write speed < 30MB/s. if does not to load module of uas for
> this device
> , can increase the write speed from 20MB/s to >40MB/s.
> 
> Signed-off-by: Hu Xiaoying <huxiaoying@gmail.com>

Again, you have not done what I have asked in the past in order to make
this patch acceptable, so I'll just start ignoring it now :(

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/Yw2nUkHFiga%2BI2af%40kroah.com.
