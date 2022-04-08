//////////////////////////////////////////////////////////////////////////////
// Name:        SVGPathSegCurvetoQuadraticRel.h
// Author:      Alex Thuering
// Copyright:   (c) 2005 Alex Thuering
// Licence:     wxWindows licence
// Notes:       generated by generate.py
//////////////////////////////////////////////////////////////////////////////

#ifndef WX_SVG_PATH_SEG_CURVETO_QUADRATIC_REL_H
#define WX_SVG_PATH_SEG_CURVETO_QUADRATIC_REL_H

#include "SVGPathSeg.h"

class wxSVGPathSegCurvetoQuadraticRel:
  public wxSVGPathSeg
{
  protected:
    double m_x;
    double m_y;
    double m_x1;
    double m_y1;

  public:
    inline double GetX() const { return m_x; }
    inline void SetX(double n) { m_x = n; }

    inline double GetY() const { return m_y; }
    inline void SetY(double n) { m_y = n; }

    inline double GetX1() const { return m_x1; }
    inline void SetX1(double n) { m_x1 = n; }

    inline double GetY1() const { return m_y1; }
    inline void SetY1(double n) { m_y1 = n; }

  public:
    wxSVGPathSegCurvetoQuadraticRel():
      wxSVGPathSeg(wxPATHSEG_CURVETO_QUADRATIC_REL), m_x(0), m_y(0), m_x1(0), m_y1(0) {}
    virtual ~wxSVGPathSegCurvetoQuadraticRel() {}
};

#endif // WX_SVG_PATH_SEG_CURVETO_QUADRATIC_REL_H