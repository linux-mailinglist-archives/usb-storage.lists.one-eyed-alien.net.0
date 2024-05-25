Return-Path: <usb-storage+bncBC5J7HGFV4DBBUGXY6ZAMGQEHNM7RBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id E14FD8CEF25
	for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 15:46:57 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6ab906db8e4sf21487236d6.2
        for <lists+usb-storage@lfdr.de>; Sat, 25 May 2024 06:46:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716644816; cv=pass;
        d=google.com; s=arc-20160816;
        b=X7fg0R/1Rx6vFJ35+5mOFNXad3FDsjd71YrP6eBTKVrFAjwDGJS2adHKrJpAtBGTew
         7nkrrGapUnKUWP8L6P6ovOpmfAN+GiAZOsPha1z8SGBMJUhEeBjE8+3V1IBa5btIZPCk
         VQ5XWloJv1JB3vPLmywsscNNaTcGTcxK8ok6FzBbV5U8BiF4DPzgOmGz7D8XZctAp82H
         kSEJcnxHuEhfw09kazyGUBDjX9VVQ/ygkh9Nfspx/xY9PvqCE4y+lKGliUGXPPxTeHvD
         /i1JPgeYoTAsDpHhE7Z8SaUoeg3T0toY/XZfpOFJcWMp56AObzUAdbON1khQ7yIze3d7
         iwHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rVVW0zhfmdDU6Lr4iHM1kc6h74mPMxv7PdX7m2LOKz4=;
        fh=VB6W56TgOPphydcSnouobzKlOaBX/i6MBLQW2zbtBOc=;
        b=mvfbmnHuQ+r+PiWkh4rx1Inhg0WgBE2Mu1QBDFvAsg6T8tPXDswWDHkxiERSHgwjMS
         ObM8Ap4lSISuJ0+kNXLCzbGvkFOC9krC8Flna/+jHE9veG1M+SHk0t4nJJFdWo2OtUI7
         kFUCMhsUv3uwp/RIM0cokDrZT1bXKHOYfw8Ql6Vhzuihz9ccuEEroh99ytXOOXRCc+rF
         LyeQF0XBbjTX+/YkMOiNI17OtwHGMJIkaCecE41oRyUa2fLvlFoRhSSD51r1ZbcTSAw8
         H30NSYKAljiuSzindKMLF9k73OqbyLijFAZcUtRNjL2M0ViKwPnNTOGPOYdXyUs6XDZn
         NluQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z6H8hexk;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716644816; x=1717249616; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rVVW0zhfmdDU6Lr4iHM1kc6h74mPMxv7PdX7m2LOKz4=;
        b=JRhsJApZ5JpJxGuvCoPuh+Heu26aU4SvfT6MIgGNzT5Ne5M94rmJKAqOZ0KdIeuhXo
         SD5asA2wXOnh/nwZdA8KEoGD96R2pAsFUaT7gvUMx6iJi8z+ZhKXbzjrIkgDz7pqPbQy
         wsSPYSm9wXd8Mz993MPjFYZi/UQSfCndXJam8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716644816; x=1717249616;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVVW0zhfmdDU6Lr4iHM1kc6h74mPMxv7PdX7m2LOKz4=;
        b=c8Djy9CAVoON7SD2JRd1TLaaRg5pVXyQ7xjpJV3WdsmlBHcp8K5mcT1fK8cTki0QeV
         UraRFvSovWTPj54cIpmzd+dxYhAYA+ksTj1g1vuZaPbwj7z5cLMwxIVaj8lBHoN84Pp+
         xRWcu5ggntf3/yuNB33+73HFjnHYRDYbxAZCUOydWoAuQWEjRPlEHlqWhGVFLmWfgbe3
         F/Dg0LrAgDI0r2qZO7m686gSqS7N6qD6lzwAnedQqqsAgSlNIG0kntUTWxxhvAhX8cN4
         lIZVWwdxLhyZGQcfBDxWQ7W+4FXNi++ysZxKYbEJ5g8DIVq5TCRL7TghKd9/Z1wx93uL
         6djQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVt5bshsfXCoSKu+wh0Obd76rNuS6FsXkHVEQrWQ23wOuKcVjK1oU1j+VPiOrunwrlSX2mqyzSibDO204uzevSYuS9n3rCxQiFS
X-Gm-Message-State: AOJu0YwGsYn4gbIZ1SYmTBXf56MZ78LBlOQ7Y3e+FJZDqRsot9+xxYuw
	nu/tps6AQgW+r02pmEIZWyp/TVd2idpqsiXw74pXFQtPBL9HpWenUSWXS43trmA=
X-Google-Smtp-Source: AGHT+IFhXIWeSze4H1ZLM7nl+OYjNif4GkRGjmMQf44kKVvQ8p0iIvPkD4smq/rheUOaU8MaL+5/zw==
X-Received: by 2002:a05:6214:320a:b0:6ad:6b01:7412 with SMTP id 6a1803df08f44-6ad6b017b72mr11104006d6.3.1716644816405;
        Sat, 25 May 2024 06:46:56 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:20c7:b0:6a0:6ff5:70d4 with SMTP id
 6a1803df08f44-6ab9b46a5e3ls17249456d6.1.-pod-prod-01-us; Sat, 25 May 2024
 06:46:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWs/1wU2HdTeC2BvKVau6OiIc758+G3e3Ave9a1S8qOXJ9u9RBIJZnKKfLmNSMhD78Ndg9GQcuT2W1VNZlC4FpoJpk0QAUJwFwNY6nGjiPa4Z7Lch8=
X-Received: by 2002:a05:6102:4a55:b0:48a:355a:176c with SMTP id ada2fe7eead31-48a38603ae5mr4637750137.21.1716644815639;
        Sat, 25 May 2024 06:46:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716644815; cv=none;
        d=google.com; s=arc-20160816;
        b=Herxlgr9B5NcGUf80q6QRtgqJOzhwbeFBLBmgofqd5EzkZ23chftq2OSPOKPTAjaD8
         HqbZ+kniF8l+lTHBuXNKqIjP2zvyNpZUu6Qps/T979vTryOCA3tSL32lhTrMGafYR+zp
         rFOJaAp+PTvf6vFVx3A1M2JnuEG0IdfscpAy//3tHEins82uT5BjdbRnJ/wHxZQ7abLa
         GnsLpa+B+z3b8CIY5neLpn9OVKlE/VUEcuvmXd5E7aLskDHGGCzoE47e5dRp7se2GSJy
         GsyYoli8g1CUi9GOATAl6f7FqsF0xdBMU41COGl4FT1tQ3Q4I7YiAfeH5idt5fczZq+w
         KgWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HPFzM8Up3WuBwRJqIYkFqYshq/Exodh2xLR6AUqOCEA=;
        fh=RwOV8CLNmUNCNs4Iv7j1geXq3Zy+I2B5eA9+307Eu3Y=;
        b=lTeWg9lwrA1VVH6SkRRCdzoeFev2N3r9xoObP082KO1kqAcVvy0r4AFALQm+oC9vJ8
         idDKJV52u5GVi7pTDd/VFMD37ngtwu01wXIyJdDlegpxtDtXzVMg1GNO4N4Wz2jS8heZ
         c5H9iZBQ6ECDnimftzhEF0aGQaqrKxBUuAEPWqeu8eRfn5H+odbwXkY36BTYmubKjXeE
         exAS467KMlVlGyiDbE+eipsJc0nhE48e/HBGu3Ndu6Zc4SihdyDavEgWP58jfljPj+Xn
         dIxsjw5jfuSIx2c2+/YaOOVA9g608pKxPmvRzvyjfCfRmswwyjq/hVS8iCCr/RtAiGWz
         F0VQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Z6H8hexk;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id ada2fe7eead31-48a3a213800sor992418137.5.2024.05.25.06.46.55
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 25 May 2024 06:46:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXrcGBf438CNr4OfpOXuc2cvH3wDXJgZiA0W4SHGvVzLYlsl9FzgEd0uBkBgu2GpfwzVfRfSev3Ll7bAuogZcRgxH+TDvUhKTx5Z1jUh6XCC36pHNo=
X-Received: by 2002:a67:fe9a:0:b0:48a:31e9:dce with SMTP id
 ada2fe7eead31-48a3851126dmr5115496137.4.1716644815335; Sat, 25 May 2024
 06:46:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240525063653.2331587-1-shichaorai@gmail.com> <503256e5-fea7-42ab-af15-015b0f78ab33@rowland.harvard.edu>
In-Reply-To: <503256e5-fea7-42ab-af15-015b0f78ab33@rowland.harvard.edu>
From: shichao lai <shichaorai@gmail.com>
Date: Sat, 25 May 2024 21:46:44 +0800
Message-ID: <CACjpba7uNtPPDAh+mkHc5fU2vzTGiTWkkS9WOqkPZ5sXQXZPGg@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH v4] usb-storage: Check whether the media is
 initialized successfully
To: Alan Stern <stern@rowland.harvard.edu>, gregkh@linuxfoundation.org, oneukum@suse.com
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Z6H8hexk;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

> Oliver did not suggest that the patch be written this way.
>
> Now with the patch written out, I think a better name for this variable
> would be media_initialized.  That is a better description of what it
> means (it doesn't mean that the driver or the device is initialized).
> And then you could remove the comment, because it would be obvious.
>
> You don't need to do this.  The info pointer is an alias for us->extra,
> which is allocated by kzalloc(), which clears all the memory it
> allocates to zero.
>
> Alan Stern

Thanks for your patient feedback!
I will rewrite the patch soon.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACjpba7uNtPPDAh%2BmkHc5fU2vzTGiTWkkS9WOqkPZ5sXQXZPGg%40mail.gmail.com.
