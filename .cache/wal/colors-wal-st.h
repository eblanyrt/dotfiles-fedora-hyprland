const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#101010", /* black   */
  [1] = "#566BAE", /* red     */
  [2] = "#49A4C1", /* green   */
  [3] = "#C6B3BE", /* yellow  */
  [4] = "#AAE5D4", /* blue    */
  [5] = "#FCD4CC", /* magenta */
  [6] = "#CFCEF1", /* cyan    */
  [7] = "#c3c3c3", /* white   */

  /* 8 bright colors */
  [8]  = "#6c5959",  /* black   */
  [9]  = "#566BAE",  /* red     */
  [10] = "#49A4C1", /* green   */
  [11] = "#C6B3BE", /* yellow  */
  [12] = "#AAE5D4", /* blue    */
  [13] = "#FCD4CC", /* magenta */
  [14] = "#CFCEF1", /* cyan    */
  [15] = "#c3c3c3", /* white   */

  /* special colors */
  [256] = "#101010", /* background */
  [257] = "#c3c3c3", /* foreground */
  [258] = "#c3c3c3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
